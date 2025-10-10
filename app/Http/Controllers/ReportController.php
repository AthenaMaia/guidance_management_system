<?php

namespace App\Http\Controllers;

use App\Models\SchoolYear;
use App\Models\Semester;
use App\Models\StudentProfile;
use App\Models\Contract;
use App\Models\Referral;
use App\Models\Counseling;
use App\Models\Student;
use App\Models\StudentTransition;
use App\Models\ContractType;
use App\Models\Course;
use App\Models\ReferralReason;
use App\Models\Section;
use App\Models\Year;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ReportExport;
use App\Exports\ReportExcelExport;
use App\Exports\Sheets\StudentsSheet;
use App\Exports\Sheets\ContractsSheet;
use App\Exports\Sheets\ReferralsSheet;
use App\Exports\Sheets\CounselingsSheet;
use App\Exports\Sheets\TransitionsSheet;



class ReportController extends Controller
{
    public function index(Request $request)
{
    $schoolYears = SchoolYear::all();
    $courses = Course::all();
    $years = Year::all();
    $sections = Section::all();
    $contractTypesList = ContractType::all();
    $referralReasons = ReferralReason::all();

    // Get active school year and semester if not selected
    $activeSchoolYear = SchoolYear::where('is_active', true)->first();
$activeSemester = Semester::where('school_year_id', optional($activeSchoolYear)->id)
                           ->where('is_current', true)
                           ->first();


    // Fallback to active SY/Sem if not explicitly filtered
    $selectedSY = $request->input('school_year_id', optional($activeSchoolYear)->id);
$selectedSemName = $request->input('semester_name', optional($activeSemester)->semester);

    // Fetch the semester(s) under the selected SY and Sem Name
    $semesters = Semester::query()
        ->where('school_year_id', $selectedSY)
        ->where('semester', $selectedSemName)
        ->get();

    $semesterIds = $semesters->pluck('id');

    // Load only if a valid semester is found
    if ($semesterIds->isNotEmpty()) {
        $studentProfiles = StudentProfile::with('student')
            ->whereIn('semester_id', $semesterIds)
            ->when($request->filled('filter_course'), fn($q) => $q->where('course', $request->filter_course))
            ->when($request->filled('filter_year'), fn($q) => $q->where('year_level', $request->filter_year))
            ->when($request->filled('filter_section'), fn($q) => $q->where('section', $request->filter_section))
            ->get()
            ->unique('student_id')
            ->sortBy(function ($profile) {
                return strtolower(optional($profile->student)->last_name . optional($profile->student)->first_name);
            })
            ->values();
if ($request->tab === 'student_profiles') {
    if ($request->filled('filter_course')) {
        $studentProfiles = $studentProfiles->filter(function ($profile) use ($request) {
            return $profile->course == $request->filter_course;
        });
    }

    if ($request->filled('filter_year')) {
        $studentProfiles = $studentProfiles->filter(function ($profile) use ($request) {
            return $profile->year_level == $request->filter_year;
        });
    }

    if ($request->filled('filter_section')) {
        $studentProfiles = $studentProfiles->filter(function ($profile) use ($request) {
            return $profile->section == $request->filter_section;
        });
    }

    if ($request->filled('search_student')) {
        $search = strtolower($request->search_student);
        $studentProfiles = $studentProfiles->filter(function ($profile) use ($search) {
            $student = $profile->student;
            return str_contains(strtolower(optional($student)->last_name), $search)
                || str_contains(strtolower(optional($student)->first_name), $search)
                || str_contains(strtolower(optional($student)->middle_name), $search)
                || str_contains((string) optional($student)->student_number, $search);
        });
    }

    $studentProfiles = $studentProfiles->values();
}



    $studentIds = $studentProfiles->pluck('student_id');
    $isCurrentSem = optional($activeSchoolYear)->id == $selectedSY &&
                    optional($activeSemester)->semester == $selectedSemName;

 
   $allContracts = Contract::with('student')
    ->whereIn('student_id', $studentIds)
    ->whereIn('semester_id', $semesterIds) // scope to current semester only
    ->get();
     
    $contracts = $studentIds->flatMap(function ($studentId) use ($allContracts, $semesterIds, $isCurrentSem) {
        $studentContracts = $allContracts->where('student_id', $studentId);

        return $studentContracts
            ->groupBy(fn($c) => $c->original_contract_id ?? $c->id)
            ->map(function ($group) use ($semesterIds, $isCurrentSem) {
                if ($isCurrentSem) {
                    return $group->sortByDesc('updated_at')->first();
                } else {
                    return $group->firstWhere(fn($c) => $semesterIds->contains($c->semester_id));
                }
            })->filter()->values(); // prevents weird collection behavior
    })->unique('id'); // ensure uniqueness by contract ID
if ($request->tab === 'contracts') {
    // Always apply filters (search and others)
    if ($request->filled('filter_contract_type')) {
        $contracts = $contracts->filter(function ($contract) use ($request) {
            return $contract->contract_type === $request->filter_contract_type;
        });
    }

    if ($request->filled('filter_contract_status')) {
        $contracts = $contracts->filter(function ($contract) use ($request) {
            return $contract->status === $request->filter_contract_status;
        });
    }

    if ($request->filled('search_contract')) {
        $search = strtolower($request->search_contract);
        $contracts = $contracts->filter(function ($contract) use ($search) {
            $student = $contract->student;
            return str_contains(strtolower(optional($student)->last_name), $search)
                || str_contains(strtolower(optional($student)->first_name), $search)
                || str_contains(strtolower(optional($student)->middle_name), $search)
                || str_contains((string) optional($student)->student_number, $search);
        });
    }

    $contracts = $contracts->values();
}




   $allReferrals = Referral::with('student')
    ->whereIn('student_id', $studentIds)
    ->whereIn('semester_id', $semesterIds) // scope to current semester only
    ->get();

$referrals = $studentIds->flatMap(function ($studentId) use ($allReferrals, $semesterIds, $isCurrentSem) {
    $studentReferrals = $allReferrals->where('student_id', $studentId);

    return $studentReferrals
        ->groupBy(fn($r) => $r->original_referral_id ?? $r->id)
        ->map(function ($group) use ($semesterIds, $isCurrentSem) {
            if ($isCurrentSem) {
                return $group->sortByDesc('updated_at')->first();
            } else {
                return $group->firstWhere(fn($r) => $semesterIds->contains($r->semester_id));
            }
        })->filter()->values(); // prevents collection issues
})->unique('id'); // remove duplicates
if ($request->tab === 'referrals') {
    if ($request->filled('filter_reason')) {
        $referrals = $referrals->filter(function ($referral) use ($request) {
            return $referral->reason === $request->filter_reason;
        });
    }

    if ($request->filled('search_referral')) {
        $search = strtolower($request->search_referral);
        $referrals = $referrals->filter(function ($referral) use ($search) {
            $student = $referral->student;
            return str_contains(strtolower(optional($student)->last_name), $search)
                || str_contains(strtolower(optional($student)->first_name), $search)
                || str_contains(strtolower(optional($student)->middle_name), $search)
                || str_contains((string) optional($student)->student_number, $search);
        });
    }

    $referrals = $referrals->values();
}



$allCounselings = Counseling::with('student')
    ->whereIn('student_id', $studentIds)
    ->whereIn('semester_id', $semesterIds) // ⬅️ added to match behavior
    ->get();

$counselings = $studentIds->flatMap(function ($studentId) use ($allCounselings, $semesterIds, $isCurrentSem) {
    $studentCounselings = $allCounselings->where('student_id', $studentId);

    return $studentCounselings
        ->groupBy(fn($c) => $c->original_counseling_id ?? $c->id)
        ->map(function ($group) use ($semesterIds, $isCurrentSem) {
            if ($isCurrentSem) {
                return $group->sortByDesc('updated_at')->first();
            } else {
                return $group->firstWhere(fn($c) => $semesterIds->contains($c->semester_id));
            }
        })->filter()->values(); // normalize result
})->unique('id');
if ($request->tab === 'counseling') {
    if ($request->filled('filter_counseling_status')) {
        $counselings = $counselings->filter(function ($counseling) use ($request) {
            return $counseling->status === $request->filter_counseling_status;
        });
    }

    if ($request->filled('search_counseling')) {
        $search = strtolower($request->search_counseling);
        $counselings = $counselings->filter(function ($counseling) use ($search) {
            $student = $counseling->student;
            return str_contains(strtolower(optional($student)->last_name), $search)
                || str_contains(strtolower(optional($student)->first_name), $search)
                || str_contains(strtolower(optional($student)->middle_name), $search)
                || str_contains((string) optional($student)->student_number, $search);
        });
    }

    $counselings = $counselings->values();
}


 $allTransitions = StudentTransition::with('student')
    ->whereIn('student_id', $studentIds)
    ->whereIn('semester_id', $semesterIds)
    ->get();

$transitions = $studentIds->flatMap(function ($studentId) use ($allTransitions, $semesterIds, $isCurrentSem) {
    $studentTransitions = $allTransitions->where('student_id', $studentId);

    return $studentTransitions
        ->groupBy(fn($t) => $t->original_transition_id ?? $t->id)
        ->map(function ($group) use ($semesterIds, $isCurrentSem) {
            return $isCurrentSem
                ? $group->sortByDesc('updated_at')->first()
                : $group->firstWhere(fn($t) => $semesterIds->contains($t->semester_id));
        })
        ->filter()
        ->values();
})->unique('id');

if ($request->tab === 'transitions') {
    if ($request->filled('filter_transition_type')) {
        $transitions = $transitions->filter(function ($transition) use ($request) {
            return $transition->transition_type === $request->filter_transition_type;
        });
    }

    if ($request->filled('search_transition')) {
        $search = strtolower($request->search_transition);
        $transitions = $transitions->filter(function ($transition) use ($search) {
            $student = $transition->student;
            return str_contains(strtolower(optional($student)->last_name), $search)
                || str_contains(strtolower(optional($student)->first_name), $search)
                || str_contains(strtolower(optional($student)->middle_name), $search)
                || str_contains((string) optional($student)->student_number, $search);
        });
    }

    $transitions = $transitions->values();
}


    
        } else {
    $studentProfiles = collect();
    $contracts = collect();
    $referrals = collect();
    $counselings = collect();
    $transitions = collect(); 
}

    $uniqueStudentIds = $studentProfiles->pluck('student_id')->unique();

    // Group counts per student_id for this SY + Sem
$contractCounts = Contract::selectRaw('student_id, COUNT(*) as count')
    ->whereIn('semester_id', $semesterIds)
    ->groupBy('student_id')
    ->pluck('count', 'student_id');

$referralCounts = Referral::selectRaw('student_id, COUNT(*) as count')
    ->whereIn('semester_id', $semesterIds)
    ->groupBy('student_id')
    ->pluck('count', 'student_id');

$counselingCounts = Counseling::selectRaw('student_id, COUNT(*) as count')
    ->whereIn('semester_id', $semesterIds)
    ->groupBy('student_id')
    ->pluck('count', 'student_id');

$totalStudents = $studentProfiles->count(); // count of unique student profiles
$totalContracts = $contracts->count();      // count of contracts for filtered semester(s)
$totalReferrals = $referrals->count();      // count of referrals
$totalCounselings = $counselings->count();  // count of counseling records
$totalTransitions = $transitions->count();// count of transition records

    

    return view('reports.report', [
        'schoolYears' => $schoolYears,
        'semesters' => $semesters,
        'selectedSY' => $selectedSY,
        'selectedSem' => $selectedSemName,
        'students' => $studentProfiles,
        'contracts' => $contracts,
        'referrals' => $referrals,
        'counselings' => $counselings,
        'transitions' => $transitions,
        'courses' => $courses,
        'years' => $years,
        'sections' => $sections,
        'contractTypesList' => $contractTypesList,
        'referralReasons' => $referralReasons,
        'uniqueStudentCount' => $uniqueStudentIds->count(),
        'contractCounts' => $contractCounts,
        'referralCounts' => $referralCounts,
        'counselingCounts' => $counselingCounts,
        'totalStudents' => $totalStudents,
        'totalContracts' => $totalContracts,
        'totalReferrals' => $totalReferrals,
        'totalCounselings' => $totalCounselings,
        'totalTransitions' => $totalTransitions,

    ]);
}

private function getLatestCarriedOverRecords($records, $semesterIds)
{
    $latestRecords = collect();

    $records->groupBy('student_id')->each(function ($studentGroup) use (&$latestRecords, $semesterIds) {
        $grouped = $studentGroup->groupBy(function ($item) {
            return $item->original_contract_id ?? $item->original_referral_id ?? $item->original_counseling_id ?? $item->id;
        });

        foreach ($grouped as $group) {
            $latest = $group->sortByDesc('semester_id')->firstWhere(function ($item) use ($semesterIds) {
                return $semesterIds->contains($item->semester_id);
            });

            if ($latest) {
                $latestRecords->push($latest);
            }
        }
    });

    return $latestRecords;
}

    public function view(Request $request, $student_id)
    {
        $schoolYearId = $request->input('school_year_id');
$semesterName = $request->input('semester_name');

$schoolYear = SchoolYear::find($schoolYearId);
$schoolYearName = $schoolYear?->school_year ?? 'N/A';

        $student = Student::findOrFail($student_id);

        $semesters = Semester::query()
            ->when($schoolYearId, fn($q) => $q->where('school_year_id', $schoolYearId))
            ->when($semesterName, fn($q) => $q->where('semester', $semesterName))
            ->get();

        $semesterIds = $semesters->pluck('id');

$allStudentContracts = Contract::with(['semester', 'images', 'original'])
    ->where('student_id', $student_id)
    ->get();

$contracts = $allStudentContracts->filter(function ($contract) use ($semesterIds, $allStudentContracts, $request) {
    if ($request->filled('filter_contract_type') && $contract->contract_type !== $request->filter_contract_type) {
        return false;
    }
    if ($request->filled('filter_contract_status') && $contract->status !== $request->filter_contract_status) {
        return false;
    }

    $originalId = $contract->original_contract_id ?? $contract->id;

    // Always include if this contract belongs to the selected semester
    if ($semesterIds->contains($contract->semester_id)) {
        return true;
    }

    // If this is the original and not carried over yet, include it
    if (is_null($contract->original_contract_id)) {
        $hasCopyInSelectedSemester = $allStudentContracts->contains(function ($c) use ($originalId, $semesterIds) {
            return $c->original_contract_id == $originalId && $semesterIds->contains($c->semester_id);
        });

        return !$hasCopyInSelectedSemester;
    }

    // Otherwise, it's a carried-over contract but not in selected semester → exclude
    return false;
});




        $referrals = Referral::with('semester', 'images')
    ->where('student_id', $student_id)
    ->whereIn('semester_id', $semesterIds)
    ->when($request->filled('filter_reason'), fn($q) => $q->where('reason', $request->filter_reason))
    ->get();


$allStudentCounselings = Counseling::with(['semester', 'images', 'original'])
    ->where('student_id', $student_id)
    ->get();

$counselings = $allStudentCounselings->filter(function ($counseling) use ($semesterIds, $allStudentCounselings, $request) {
    if ($request->filled('filter_counseling_status') && $counseling->status !== $request->filter_counseling_status) return false;

    $originalId = $counseling->original_counseling_id ?? $counseling->id;

    if (!is_null($counseling->original_counseling_id)) {
        return $semesterIds->contains($counseling->semester_id);
    }

    $hasCarriedOver = $allStudentCounselings->contains(function ($c) use ($originalId, $semesterIds) {
        return $c->original_counseling_id == $originalId && $semesterIds->contains($c->semester_id);
    });

    return !$hasCarriedOver && $semesterIds->contains($counseling->semester_id);
});


$allStudentTransitions = StudentTransition::with(['semester', 'original'])
    ->where('student_id', $student_id)
    ->get();
$transitions = $allStudentTransitions->filter(function ($transition) use ($semesterIds, $allStudentTransitions, $request) {
    if ($request->filled('filter_transition_type') && $transition->transition_type !== $request->filter_transition_type) {
        return false;
    }

    $originalId = $transition->original_transition_id ?? $transition->id;

    // If this is a carried-over record, keep only if it belongs to selected semesters
    if (!is_null($transition->original_transition_id)) {
        return $semesterIds->contains($transition->semester_id);
    }

    // If this is the original and hasn't been carried over yet to selected semester, include
    $hasCarriedOver = $allStudentTransitions->contains(function ($t) use ($originalId, $semesterIds) {
        return $t->original_transition_id == $originalId && $semesterIds->contains($t->semester_id);
    });

    return !$hasCarriedOver && $semesterIds->contains($transition->semester_id);
});



        $profile = StudentProfile::where('student_id', $student_id)
            ->whereIn('semester_id', $semesterIds)
            ->latest()
            ->first(); 

            $contractTypesList = ContractType::all();
$referralReasons = ReferralReason::all();


        return view('reports.view_student_records', compact(
    'student', 'contracts', 'referrals', 'counselings',
    'schoolYearName', 'semesterName','transitions', 'profile' ,'contractTypesList',
    'referralReasons'
));


    }

   

public function export(Request $request)
{
    $schoolYearId = $request->school_year_id;
    $semesterName = $request->semester_name;
    $tab = $request->tab ?? 'all';

    $schoolYear = SchoolYear::find($schoolYearId);
    $semesterIds = Semester::where('school_year_id', $schoolYearId)
        ->where('semester', $semesterName)
        ->pluck('id');

    $isCurrentSem = optional($schoolYear)->is_active &&
                    optional(Semester::whereIn('id', $semesterIds)->where('is_current', true)->first())->semester === $semesterName;

    // STUDENTS
    $students = StudentProfile::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_course'), fn($q) => $q->where('course', $request->filter_course))
        ->when($request->filled('filter_year'), fn($q) => $q->where('year_level', $request->filter_year))
        ->when($request->filled('filter_section'), fn($q) => $q->where('section', $request->filter_section))
        ->get()
        ->unique('student_id');

    $studentIds = $students->pluck('student_id');

    // CONTRACTS
    $currentContracts = Contract::with('student')
        ->whereIn('semester_id', $semesterIds)
         ->when($studentIds->isNotEmpty(), fn($q) => $q->whereIn('student_id', $studentIds))
        ->get();

    $pastContracts = Contract::with('student')
        ->whereNotIn('semester_id', $semesterIds)
        ->whereIn('student_id', $studentIds)
        ->get();

    $allContracts = $currentContracts->merge($pastContracts);

    $contracts = $isCurrentSem
    ? $allContracts->filter(function ($contract) use ($semesterIds, $allContracts, $request) {
        if ($request->filled('filter_contract_status') && $contract->status !== $request->filter_contract_status) return false;
        if ($request->filled('filter_contract_type') && $contract->contract_type !== $request->filter_contract_type) return false;

        $originalId = $contract->original_contract_id ?? $contract->id;

        if (!is_null($contract->original_contract_id)) {
            return $semesterIds->contains($contract->semester_id); // keep carried-over
        }

        $hasCarriedOver = $allContracts->contains(function ($c) use ($originalId, $semesterIds) {
            return $c->original_contract_id == $originalId && $semesterIds->contains($c->semester_id);
        });

        return !$hasCarriedOver && $semesterIds->contains($contract->semester_id);
    })
    : $allContracts->filter(function ($contract) use ($semesterIds, $request) {
        return $semesterIds->contains($contract->semester_id) &&
               (!$request->filled('filter_contract_status') || $contract->status === $request->filter_contract_status) &&
               (!$request->filled('filter_contract_type') || $contract->contract_type === $request->filter_contract_type);
    });


    // REFERRALS
    $referrals = Referral::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($studentIds->isNotEmpty(), fn($q) => $q->whereIn('student_id', $studentIds))
        ->when($request->filled('filter_reason'), fn($q) => $q->where('reason', $request->filter_reason))
        ->get();

    // COUNSELINGS (mirroring view logic)
    $currentCounselings = Counseling::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($studentIds->isNotEmpty(), fn($q) => $q->whereIn('student_id', $studentIds))
        ->get();

    $pastCounselings = Counseling::with('student')
        ->whereNotIn('semester_id', $semesterIds)
        ->whereIn('student_id', $studentIds)
        ->get();

    $allCounselings = $currentCounselings->merge($pastCounselings);

    $counselings = $isCurrentSem
        ? $allCounselings->filter(function ($counseling) use ($semesterIds, $allCounselings, $request) {
            if ($request->filled('filter_counseling_status') && $counseling->status !== $request->filter_counseling_status) return false;

            $originalId = $counseling->original_counseling_id ?? $counseling->id;

if (!is_null($counseling->original_counseling_id)) {
    return $semesterIds->contains($counseling->semester_id); // show carried-over only
}

$hasCopyInCurrent = $allCounselings->contains(function ($c) use ($originalId, $semesterIds) {
    return $c->original_counseling_id == $originalId && $semesterIds->contains($c->semester_id);
});

return !$hasCopyInCurrent && $semesterIds->contains($counseling->semester_id);

        })
        : $allCounselings->filter(function ($counseling) use ($semesterIds, $request) {
            return $semesterIds->contains($counseling->semester_id) &&
                (!$request->filled('filter_counseling_status') || $counseling->status === $request->filter_counseling_status);
        });

    // TRANSITIONS
    $transitions = StudentTransition::with('semester.schoolYear')
        ->whereIn('semester_id', $semesterIds)
        ->when($studentIds->isNotEmpty(), fn($q) => $q->whereIn('student_id', $studentIds))
        ->when($request->filled('filter_transition_type'), fn($q) => $q->where('transition_type', $request->filter_transition_type))
        ->get();

    // COUNTS
    $contractCounts = Contract::selectRaw('student_id, COUNT(*) as count')
        ->whereIn('semester_id', $semesterIds)
        ->when($studentIds->isNotEmpty(), fn($q) => $q->whereIn('student_id', $studentIds))
        ->groupBy('student_id')
        ->pluck('count', 'student_id');

    $referralCounts = Referral::selectRaw('student_id, COUNT(*) as count')
        ->whereIn('semester_id', $semesterIds)
        ->when($studentIds->isNotEmpty(), fn($q) => $q->whereIn('student_id', $studentIds))
        ->groupBy('student_id')
        ->pluck('count', 'student_id');

    $counselingCounts = Counseling::selectRaw('student_id, COUNT(*) as count')
        ->whereIn('semester_id', $semesterIds)
        ->when($studentIds->isNotEmpty(), fn($q) => $q->whereIn('student_id', $studentIds))
        ->groupBy('student_id')
        ->pluck('count', 'student_id');

    $pdf = Pdf::loadView('reports.export_pdf', compact(
        'schoolYear',
        'semesterName',
        'tab',
        'students',
        'contracts',
        'referrals',
        'counselings',
        'transitions',
        'contractCounts',
        'referralCounts',
        'counselingCounts'
    ))->setPaper('a4', 'portrait');

    // Build dynamic filename
$baseName = "Report_{$schoolYear->school_year}_{$semesterName}";

// Append based on selected tab and filters
switch ($tab) {
    case 'contracts':
        $type = $request->filter_contract_type ? str_replace(' ', '_', $request->filter_contract_type) : 'AllTypes';
        $status = $request->filter_contract_status ? str_replace(' ', '_', $request->filter_contract_status) : 'AllStatus';
        $baseName .= "_Contracts_{$type}_{$status}";
        break;

    case 'referrals':
        $reason = $request->filter_reason ? str_replace(' ', '_', $request->filter_reason) : 'AllReasons';
        $baseName .= "_Referrals_{$reason}";
        break;

    case 'counseling':
        $status = $request->filter_counseling_status ? str_replace(' ', '_', $request->filter_counseling_status) : 'AllStatus';
        $baseName .= "_Counseling_{$status}";
        break;

    case 'transitions':
        $type = $request->filter_transition_type ? str_replace(' ', '_', $request->filter_transition_type) : 'AllTypes';
        $baseName .= "_Transitions_{$type}";
        break;

    case 'student_profiles':
        $course = $request->filter_course ? str_replace(' ', '_', $request->filter_course) : 'AllCourses';
        $year = $request->filter_year ? str_replace(' ', '_', $request->filter_year) : 'AllYears';
        $section = $request->filter_section ? str_replace(' ', '_', $request->filter_section) : 'AllSections';
        $baseName .= "_Profiles_{$course}_{$year}_{$section}";
        break;

    default:
        $baseName .= "_AllData";
        break;
}

// Clean filename and limit length
$fileName = preg_replace('/[^A-Za-z0-9_\-]/', '', $baseName);
$fileName = substr($fileName, 0, 180); // prevent filename too long errors

return $pdf->download("{$fileName}.pdf");

}



public function exportExcel(Request $request)
{
    $schoolYearId = $request->school_year_id;
    $semesterName = $request->semester_name;
    $tab = $request->tab ?? 'all';

    $schoolYear = SchoolYear::find($schoolYearId);
    $semesterIds = Semester::where('school_year_id', $schoolYearId)
        ->where('semester', $semesterName)
        ->pluck('id');

    // Get student profiles with filters
    $students = StudentProfile::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_course'), fn($q) => $q->where('course', $request->filter_course))
        ->when($request->filled('filter_year'), fn($q) => $q->where('year_level', $request->filter_year))
        ->when($request->filled('filter_section'), fn($q) => $q->where('section', $request->filter_section))
        ->get()
        ->unique('student_id')
        ->values();

    $studentIds = $students->pluck('student_id');

    $isCurrentSem = optional($schoolYear)->is_active && Semester::where('school_year_id', $schoolYearId)->where('semester', $semesterName)->where('is_current', true)->exists();

    // CONTRACTS
    $currentContracts = Contract::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_contract_type'), fn($q) => $q->where('contract_type', $request->filter_contract_type))
        ->get();

    $pastContracts = Contract::with('student')
        ->whereNotIn('semester_id', $semesterIds)
        ->whereIn('student_id', $studentIds)
        ->get();

    $allContracts = $currentContracts->merge($pastContracts);

    $contracts = $isCurrentSem
        ? $allContracts->filter(function ($contract) use ($semesterIds, $allContracts, $request) {
            if ($request->filled('filter_contract_status') && $contract->status !== $request->filter_contract_status) {
                return false;
            }

            if ($request->filled('filter_contract_type') && $contract->contract_type !== $request->filter_contract_type) {
                return false;
            }

            $originalId = $contract->original_contract_id ?? $contract->id;
           if (!is_null($contract->original_contract_id)) {
    return $semesterIds->contains($contract->semester_id);
}

$hasCarriedOver = $allContracts->contains(function ($c) use ($originalId, $semesterIds) {
    return $c->original_contract_id == $originalId && $semesterIds->contains($c->semester_id);
});

return !$hasCarriedOver && $semesterIds->contains($contract->semester_id);



        })
        : $allContracts->filter(function ($contract) use ($semesterIds, $request) {
            return $semesterIds->contains($contract->semester_id) &&
                   (!$request->filled('filter_contract_status') || $contract->status === $request->filter_contract_status) &&
                   (!$request->filled('filter_contract_type') || $contract->contract_type === $request->filter_contract_type);
        });

    // COUNSELINGS
    $currentCounselings = Counseling::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->get();

    $pastCounselings = Counseling::with('student')
        ->whereNotIn('semester_id', $semesterIds)
        ->whereIn('student_id', $studentIds)
        ->get();

    $allCounselings = $currentCounselings->merge($pastCounselings);

    $counselings = $isCurrentSem
        ? $allCounselings->filter(function ($counseling) use ($semesterIds, $allCounselings, $request) {
            if ($request->filled('filter_counseling_status') && $counseling->status !== $request->filter_counseling_status) {
                return false;
            }


            $originalId = $counseling->original_counseling_id ?? $counseling->id;

            if (!is_null($counseling->original_counseling_id)) {
    return $semesterIds->contains($counseling->semester_id);
}

$hasCarriedOver = $allCounselings->contains(function ($c) use ($originalId, $semesterIds) {
    return $c->original_counseling_id == $originalId && $semesterIds->contains($c->semester_id);
});

return !$hasCarriedOver && $semesterIds->contains($counseling->semester_id);

        })
        : $allCounselings->filter(function ($counseling) use ($semesterIds, $request) {
            return $semesterIds->contains($counseling->semester_id) &&
                   (!$request->filled('filter_counseling_status') || $counseling->status === $request->filter_counseling_status);
        });

    // REFERRALS
    $referrals = Referral::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_reason'), fn($q) => $q->where('reason', $request->filter_reason))
        ->get();

    // TRANSITIONS
    $transitions = StudentTransition::with('semester.schoolYear')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_transition_type'), fn($q) => $q->where('transition_type', $request->filter_transition_type))
        ->get();

    // COUNT METRICS
    $contractCounts = Contract::selectRaw('student_id, COUNT(*) as count')
        ->whereIn('semester_id', $semesterIds)
        ->groupBy('student_id')
        ->pluck('count', 'student_id');

    $referralCounts = Referral::selectRaw('student_id, COUNT(*) as count')
        ->whereIn('semester_id', $semesterIds)
        ->groupBy('student_id')
        ->pluck('count', 'student_id');

    $counselingCounts = Counseling::selectRaw('student_id, COUNT(*) as count')
        ->whereIn('semester_id', $semesterIds)
        ->groupBy('student_id')
        ->pluck('count', 'student_id');

    // SHEETS
    $sheets = match ($tab) {
        'student_profiles' => [new StudentsSheet($students, $contractCounts, $referralCounts, $counselingCounts)],
        'contracts'        => [new ContractsSheet($contracts)],
        'referrals'        => [new ReferralsSheet($referrals)],
        'counseling'       => [new CounselingsSheet($counselings)],
        'transitions'      => [new TransitionsSheet($transitions)],
        default            => [
            new StudentsSheet($students, $contractCounts, $referralCounts, $counselingCounts),
            new ContractsSheet($contracts),
            new ReferralsSheet($referrals),
            new CounselingsSheet($counselings),
            new TransitionsSheet($transitions),
        ],
    };

    // Build dynamic filename
$baseName = "Report_{$schoolYear->school_year}_{$semesterName}";

switch ($tab) {
    case 'contracts':
        $type = $request->filter_contract_type ? str_replace(' ', '_', $request->filter_contract_type) : 'AllTypes';
        $status = $request->filter_contract_status ? str_replace(' ', '_', $request->filter_contract_status) : 'AllStatus';
        $baseName .= "_Contracts_{$type}_{$status}";
        break;

    case 'referrals':
        $reason = $request->filter_reason ? str_replace(' ', '_', $request->filter_reason) : 'AllReasons';
        $baseName .= "_Referrals_{$reason}";
        break;

    case 'counseling':
        $status = $request->filter_counseling_status ? str_replace(' ', '_', $request->filter_counseling_status) : 'AllStatus';
        $baseName .= "_Counseling_{$status}";
        break;

    case 'transitions':
        $type = $request->filter_transition_type ? str_replace(' ', '_', $request->filter_transition_type) : 'AllTypes';
        $baseName .= "_Transitions_{$type}";
        break;

    case 'student_profiles':
        $course = $request->filter_course ? str_replace(' ', '_', $request->filter_course) : 'AllCourses';
        $year = $request->filter_year ? str_replace(' ', '_', $request->filter_year) : 'AllYears';
        $section = $request->filter_section ? str_replace(' ', '_', $request->filter_section) : 'AllSections';
        $baseName .= "_Profiles_{$course}_{$year}_{$section}";
        break;

    default:
        $baseName .= "_AllData";
        break;
}

// Clean and trim filename
$fileName = preg_replace('/[^A-Za-z0-9_\-]/', '', $baseName);
$fileName = substr($fileName, 0, 180); 
$fileName .= '.xlsx';

return Excel::download(new ReportExcelExport($sheets), $fileName);

  
}


public function exportStudentPdf(Request $request)
{
    $student = Student::findOrFail($request->student_id);
    $schoolYear = SchoolYear::findOrFail($request->school_year_id);
    $semesterIds = Semester::where('school_year_id', $schoolYear->id)
        ->where('semester', $request->semester_name)
        ->pluck('id');

    $include = $request->input('export_type', 'all');

    // CONTRACTS
    $allContracts = Contract::with('images')
        ->where('student_id', $student->id)
        ->get();

    $contracts = $allContracts->filter(function ($contract) use ($semesterIds, $allContracts, $request) {
        if ($request->filled('filter_contract_status') && $contract->status !== $request->filter_contract_status) return false;
        if ($request->filled('filter_contract_type') && $contract->contract_type !== $request->filter_contract_type) return false;

        $originalId = $contract->original_contract_id ?? $contract->id;

        if (!is_null($contract->original_contract_id)) {
            return $semesterIds->contains($contract->semester_id);
        }

        $hasCarriedOver = $allContracts->contains(function ($c) use ($originalId, $semesterIds) {
            return $c->original_contract_id == $originalId && $semesterIds->contains($c->semester_id);
        });

        return !$hasCarriedOver && $semesterIds->contains($contract->semester_id);
    });

    // REFERRALS
    $referrals = ($include === 'all' || $include === 'referrals')
        ? Referral::with('images')
            ->where('student_id', $student->id)
            ->whereIn('semester_id', $semesterIds)
            ->when($request->filter_reason, fn($q) => $q->where('reason', $request->filter_reason))
            ->get()
        : collect();

    // COUNSELINGS
    $counselings = collect();
    if ($include === 'all' || $include === 'counselings') {
        $allStudentCounselings = Counseling::with(['semester', 'images', 'original'])
            ->where('student_id', $student->id)
            ->get();

        $counselings = $allStudentCounselings->filter(function ($counseling) use ($semesterIds, $allStudentCounselings, $request) {
            if ($request->filled('filter_counseling_status') && $counseling->status !== $request->filter_counseling_status) {
                return false;
            }

            $originalId = $counseling->original_counseling_id ?? $counseling->id;

            if (!is_null($counseling->original_counseling_id)) {
                return $semesterIds->contains($counseling->semester_id);
            }

            $hasCopyInCurrent = $allStudentCounselings->contains(function ($c) use ($originalId, $semesterIds) {
                return $c->original_counseling_id == $originalId && $semesterIds->contains($c->semester_id);
            });

            return !$hasCopyInCurrent && $semesterIds->contains($counseling->semester_id);
        });
    }

    // PROFILE
    $profile = StudentProfile::where('student_id', $student->id)
        ->whereIn('semester_id', $semesterIds)
        ->latest()
        ->first();

    $semesterName = $request->semester_name;
    $tab = $include;

    // 🧠 Build filename using student's full name
    $studentName = trim("{$student->first_name} {$student->last_name}");
    $studentName = str_replace(' ', '_', $studentName); // Replace spaces with underscores

    $baseName = "{$studentName}_{$schoolYear->school_year}_{$semesterName}";

    switch ($include) {
        case 'contracts':
            $type = $request->filter_contract_type ? str_replace(' ', '_', $request->filter_contract_type) : 'AllTypes';
            $status = $request->filter_contract_status ? str_replace(' ', '_', $request->filter_contract_status) : 'AllStatus';
            $baseName .= "_Contracts_{$type}_{$status}";
            break;

        case 'referrals':
            $reason = $request->filter_reason ? str_replace(' ', '_', $request->filter_reason) : 'AllReasons';
            $baseName .= "_Referrals_{$reason}";
            break;

        case 'counselings':
            $status = $request->filter_counseling_status ? str_replace(' ', '_', $request->filter_counseling_status) : 'AllStatus';
            $baseName .= "_Counseling_{$status}";
            break;

        default:
            $baseName .= "_AllData";
            break;
    }

    // Clean filename
    $fileName = preg_replace('/[^A-Za-z0-9_\-]/', '', $baseName);
    $fileName = substr($fileName, 0, 180) . '.pdf';

    // Generate PDF
    $pdf = Pdf::loadView('reports.student_history_pdf', compact(
        'student', 'contracts', 'referrals', 'counselings', 'profile', 'schoolYear', 'semesterName', 'tab'
    ))->setPaper('a4', 'portrait');

    return $pdf->download($fileName);
}



public function exportStudentExcel(Request $request)
{
    $student = Student::findOrFail($request->student_id);
    $schoolYear = SchoolYear::findOrFail($request->school_year_id);
    $semesterName = $request->semester_name ?? 'Semester';

    // Build student's full name and clean it for filename
    $studentName = trim("{$student->first_name} {$student->last_name}");
    $studentName = str_replace(' ', '_', $studentName); // replace spaces with underscores

    $include = $request->input('export_type', 'all');
    $baseName = "{$studentName}_{$schoolYear->school_year}_{$semesterName}";

    switch ($include) {
        case 'contracts':
            $type = $request->filter_contract_type ? str_replace(' ', '_', $request->filter_contract_type) : 'AllTypes';
            $status = $request->filter_contract_status ? str_replace(' ', '_', $request->filter_contract_status) : 'AllStatus';
            $baseName .= "_Contracts_{$type}_{$status}";
            break;

        case 'referrals':
            $reason = $request->filter_reason ? str_replace(' ', '_', $request->filter_reason) : 'AllReasons';
            $baseName .= "_Referrals_{$reason}";
            break;

        case 'counselings':
            $status = $request->filter_counseling_status ? str_replace(' ', '_', $request->filter_counseling_status) : 'AllStatus';
            $baseName .= "_Counseling_{$status}";
            break;

        default:
            $baseName .= "_AllData";
            break;
    }

    // Clean and limit filename length
    $fileName = preg_replace('/[^A-Za-z0-9_\-]/', '', $baseName);
    $fileName = substr($fileName, 0, 180) . '.xlsx';

    // Return Excel download
    return Excel::download(
        new \App\Exports\StudentHistoryExport($request),
        $fileName
    );
}



// public function exportExcel(Request $request)
// {
//     $schoolYearId = $request->school_year_id;
//     $semesterName = $request->semester_name;

//     $semesterIds = Semester::where('school_year_id', $schoolYearId)
//         ->where('semester', $semesterName)
//         ->pluck('id');

//     $students = StudentProfile::with('student')
//         ->whereIn('semester_id', $semesterIds)
//         ->when($request->filled('filter_course'), fn($q) => $q->where('course', $request->filter_course))
//         ->when($request->filled('filter_year'), fn($q) => $q->where('year_level', $request->filter_year))
//         ->when($request->filled('filter_section'), fn($q) => $q->where('section', $request->filter_section))
//         ->get()
//         ->unique('student_id');

//     $contractCounts = Contract::selectRaw('student_id, COUNT(*) as count')
//         ->whereIn('semester_id', $semesterIds)
//         ->groupBy('student_id')
//         ->pluck('count', 'student_id');

//     $referralCounts = Referral::selectRaw('student_id, COUNT(*) as count')
//         ->whereIn('semester_id', $semesterIds)
//         ->groupBy('student_id')
//         ->pluck('count', 'student_id');

//     $counselingCounts = Counseling::selectRaw('student_id, COUNT(*) as count')
//         ->whereIn('semester_id', $semesterIds)
//         ->groupBy('student_id')
//         ->pluck('count', 'student_id');

//     $data = [
//         'students' => $students,
//         'contractCounts' => $contractCounts,
//         'referralCounts' => $referralCounts,
//         'counselingCounts' => $counselingCounts,
//     ];

//     return Excel::download(new ReportsExport($data), 'Student_Report_' . now()->format('Ymd_His') . '.xlsx');
// }


// public function exportStudentHistory(Request $request)
// {
//     $student = Student::findOrFail($request->student_id);
//     $schoolYear = SchoolYear::find($request->school_year_id);
//     $semesterName = $request->semester_name;

//     $semesterIds = Semester::where('school_year_id', $schoolYear?->id)
//         ->where('semester', $semesterName)
//         ->pluck('id');

//     $contracts = Contract::with('semester', 'images')
//         ->where('student_id', $student->id)
//         ->whereIn('semester_id', $semesterIds)
//         ->get();

//     $referrals = Referral::with('semester', 'images')
//         ->where('student_id', $student->id)
//         ->whereIn('semester_id', $semesterIds)
//         ->get();

//     $counselings = Counseling::with('semester', 'images')
//         ->where('student_id', $student->id)
//         ->whereIn('semester_id', $semesterIds)
//         ->get();

//     $profile = StudentProfile::where('student_id', $student->id)
//         ->whereIn('semester_id', $semesterIds)
//         ->latest()
//         ->first();

//     $pdf = PDF::loadView('reports.student_history_pdf', compact(
//         'student', 'schoolYear', 'semesterName', 'contracts', 'referrals', 'counselings', 'profile'
//     ))->setPaper('a4', 'portrait');

//     return $pdf->download("Student_History_{$student->student_id}.pdf");
// }


}