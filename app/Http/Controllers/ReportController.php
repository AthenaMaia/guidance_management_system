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
            ->values();

       $currentContracts = Contract::with('student')
    ->whereIn('semester_id', $semesterIds)
    ->when($request->filled('filter_contract_type'), fn($q) => $q->where('contract_type', $request->filter_contract_type))
    ->get();


$pastContracts = Contract::with('student')
    ->whereNotIn('semester_id', $semesterIds)
    ->whereIn('student_id', $studentProfiles->pluck('student_id'))
    ->get();

    $isCurrentSem = optional($activeSemester)->semester === $selectedSemName
    && optional($activeSchoolYear)->id == $selectedSY;


$allContracts = $currentContracts->merge($pastContracts);

$contracts = $isCurrentSem
    ? $allContracts->filter(function ($contract) use ($semesterIds, $allContracts, $request) {
        if ($request->filled('filter_contract_status') && $contract->status !== $request->filter_contract_status) {
            return false;
        }

        if ($contract->status === 'Completed' && $semesterIds->contains($contract->semester_id)) {
            return true;
        }

        $originalId = $contract->original_contract_id ?? $contract->id;

        $hasCompletedInCurrent = $allContracts->contains(function ($c) use ($originalId, $semesterIds) {
            return $c->status === 'Completed' &&
                   $semesterIds->contains($c->semester_id) &&
                   ($c->original_contract_id == $originalId || $c->id == $originalId);
        });

        return !$hasCompletedInCurrent;
    })
    : $allContracts->filter(function ($contract) use ($semesterIds, $request) {
        return $semesterIds->contains($contract->semester_id) &&
               (!$request->filled('filter_contract_status') || $contract->status === $request->filter_contract_status);
    });



        $referrals = Referral::with('student')
            ->whereIn('semester_id', $semesterIds)
            ->when($request->filled('filter_reason'), fn($q) => $q->where('reason', $request->filter_reason))
            ->get();

     $currentCounselings = Counseling::with('student')
    ->whereIn('semester_id', $semesterIds)
    ->get();


$pastCounselings = Counseling::with('student')
    ->whereNotIn('semester_id', $semesterIds)
    ->whereIn('student_id', $studentProfiles->pluck('student_id'))
    ->get();

$allCounselings = $currentCounselings->merge($pastCounselings);

$counselings = $isCurrentSem
    ? $allCounselings->filter(function ($counseling) use ($semesterIds, $allCounselings, $request) {
        if ($request->filled('filter_counseling_status') && $counseling->status !== $request->filter_counseling_status) {
            return false;
        }

        if ($counseling->status === 'Completed' && $semesterIds->contains($counseling->semester_id)) {
            return true;
        }

        $originalId = $counseling->original_counseling_id ?? $counseling->id;

        $hasCompletedInCurrent = $allCounselings->contains(function ($c) use ($originalId, $semesterIds) {
            return $c->status === 'Completed' &&
                   $semesterIds->contains($c->semester_id) &&
                   ($c->original_counseling_id == $originalId || $c->id == $originalId);
        });

        return !$hasCompletedInCurrent;
    })
    : $allCounselings->filter(function ($counseling) use ($semesterIds, $request) {
        return $semesterIds->contains($counseling->semester_id) &&
               (!$request->filled('filter_counseling_status') || $counseling->status === $request->filter_counseling_status);
    });




        $transitions = StudentTransition::with('student')
            ->whereIn('semester_id', $semesterIds)
            ->when($request->filled('filter_transition_type'), function ($q) use ($request) {
                $q->where('transition_type', $request->filter_transition_type);
            })
            ->get();

    
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

$currentContracts = Contract::with(['semester', 'images', 'original'])
    ->where('student_id', $student_id)
    ->whereIn('semester_id', $semesterIds)
    ->get();

$carriedOverContracts = Contract::with(['semester', 'images', 'original'])
    ->where('student_id', $student_id)
    ->whereNotIn('semester_id', $semesterIds)
    ->whereNotNull('original_contract_id')
    ->where('status', '!=', 'Completed') // exclude completed carried over contracts
    ->get();

$originalContracts = Contract::with(['semester', 'images'])
    ->whereIn('id', $carriedOverContracts->pluck('original_contract_id'))
    ->get();

$allContracts = $currentContracts->merge($carriedOverContracts)->merge($originalContracts);

$contracts = $allContracts->filter(function ($contract) use ($semesterIds, $allContracts) {
    if ($contract->status === 'Completed' && in_array($contract->semester_id, $semesterIds->toArray())) {
        return true; 
    }

    $originalId = $contract->original_contract_id ?? $contract->id;

    $hasCompletedCopyInCurrent = $allContracts->contains(function ($c) use ($originalId, $semesterIds) {
        return $c->status === 'Completed' &&
               in_array($c->semester_id, $semesterIds->toArray()) &&
               ($c->original_contract_id == $originalId || $c->id == $originalId);
    });

    return !$hasCompletedCopyInCurrent;
});



        $referrals = Referral::with('semester', 'images')
            ->where('student_id', $student_id)
            ->whereIn('semester_id', $semesterIds)
            ->get();

      $carriedOverCounselings = Counseling::with('semester', 'images')
    ->where('student_id', $student_id)
    ->whereNotIn('semester_id', $semesterIds)
    ->whereNotNull('original_counseling_id')
    ->get();

$originalCounselings = Counseling::with('semester', 'images')
    ->where('student_id', $student_id)
    ->whereNotIn('semester_id', $semesterIds)
    ->whereNull('original_counseling_id')
    ->whereDoesntHave('carriedOver') // show only if not carried over
    ->get();

$currentCounselings = Counseling::with('semester', 'images')
    ->where('student_id', $student_id)
    ->whereIn('semester_id', $semesterIds)
    ->get();

$allCounselings = $currentCounselings
    ->merge($carriedOverCounselings)
    ->merge($originalCounselings);

$counselings = $allCounselings->filter(function ($counseling) use ($semesterIds, $allCounselings) {
    if ($counseling->status === 'Completed' && in_array($counseling->semester_id, $semesterIds->toArray())) {
        return true; // keep completed from current
    }

    $originalId = $counseling->original_counseling_id ?? $counseling->id;

    $hasCompletedCopyInCurrent = $allCounselings->contains(function ($c) use ($originalId, $semesterIds) {
        return $c->status === 'Completed' &&
               in_array($c->semester_id, $semesterIds->toArray()) &&
               ($c->original_counseling_id == $originalId || $c->id == $originalId);
    });

    return !$hasCompletedCopyInCurrent;
});


        $profile = StudentProfile::where('student_id', $student_id)
            ->whereIn('semester_id', $semesterIds)
            ->latest()
            ->first(); 


        return view('reports.view_student_records', compact(
    'student', 'contracts', 'referrals', 'counselings',
    'schoolYearName', 'semesterName', 'profile'
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

    // STUDENT PROFILES with filters
    $students = StudentProfile::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_course'), fn($q) => $q->where('course', $request->filter_course))
        ->when($request->filled('filter_year'), fn($q) => $q->where('year_level', $request->filter_year))
        ->when($request->filled('filter_section'), fn($q) => $q->where('section', $request->filter_section))
        ->get();

    // CONTRACTS with filters
    $contracts = Contract::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_contract_type'), fn($q) => $q->where('contract_type', $request->filter_contract_type))
        ->when($request->filled('filter_contract_status'), fn($q) => $q->where('status', $request->filter_contract_status))
        ->get();

    // REFERRALS with filters
    $referrals = Referral::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_reason'), fn($q) => $q->where('reason', $request->filter_reason))
        ->get();

    // COUNSELINGS with filters
    $counselings = Counseling::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_counseling_status'), fn($q) => $q->where('status', $request->filter_counseling_status))
        ->get();

    // TRANSITIONS with filters
    $transitions = StudentTransition::with('semester.schoolYear')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_transition_type'), fn($q) => $q->where('transition_type', $request->filter_transition_type))
        ->get();

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
    ))->setPaper('a4', 'landscape');

    return $pdf->download("Report_{$schoolYear->school_year}_{$semesterName}.pdf");
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

    // Load data based on filters
    $students = StudentProfile::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_course'), fn($q) => $q->where('course', $request->filter_course))
        ->when($request->filled('filter_year'), fn($q) => $q->where('year_level', $request->filter_year))
        ->when($request->filled('filter_section'), fn($q) => $q->where('section', $request->filter_section))
        ->get();

    $contracts = Contract::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_contract_type'), fn($q) => $q->where('contract_type', $request->filter_contract_type))
        ->when($request->filled('filter_contract_status'), fn($q) => $q->where('status', $request->filter_contract_status))
        ->get();

    $referrals = Referral::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_reason'), fn($q) => $q->where('reason', $request->filter_reason))
        ->get();

    $counselings = Counseling::with('student')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_counseling_status'), fn($q) => $q->where('status', $request->filter_counseling_status))
        ->get();

    $transitions = StudentTransition::with('semester.schoolYear')
        ->whereIn('semester_id', $semesterIds)
        ->when($request->filled('filter_transition_type'), fn($q) => $q->where('transition_type', $request->filter_transition_type))
        ->get();

    // Load counts for student sheet
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

    // Choose only the tab/sheet requested
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

    $filename = 'Report_' . $schoolYear?->school_year . '_' . $semesterName . '_' . ucfirst($tab) . '.xlsx';

    return Excel::download(new ReportExcelExport($sheets), $filename);
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
