<?php

namespace App\Http\Controllers;

use App\Models\Contract;
use App\Models\Course;
use App\Models\SchoolYear;
use App\Models\Section;
use App\Models\Semester;
use App\Models\Student;
use App\Models\StudentProfile;
use App\Models\StudentTransition;
use App\Models\StudentTransitionImage;
use App\Models\User;
use App\Models\Year;
use Illuminate\Http\Request;
 use Illuminate\Pagination\LengthAwarePaginator;
  use Illuminate\Support\Str;

class SemesterController extends Controller
{
    public function index()
    {
        $schoolYears = SchoolYear::with('semesters')->orderByDesc('is_active')->orderByDesc('id')->get();
        $activeSchoolYear = SchoolYear::where('is_active', true)->with('semesters')->first();
        $activeSemester = Semester::where('is_current', true)->first();
$users = User::all();
        // Check if students already validated in this active semester
        $hasStudents = $activeSemester 
            ? StudentProfile::where('semester_id', $activeSemester->id)->exists() 
            : false;

        return view('semester.index', compact('schoolYears', 'activeSchoolYear', 'activeSemester', 'hasStudents', 'users'));
    }

    public function store(Request $request)
{
    $validated = $request->validate([
        'semester' => 'required|string|in:1st,2nd,Summer',
        'is_current' => 'nullable|boolean', // added this to get the checkbox
    ]);

    $activeSchoolYear = SchoolYear::where('is_active', true)->first();

    if (!$activeSchoolYear) {
        return back()->withErrors(['No active School Year found. Please create one first.']);
    }

    if (Semester::where('school_year_id', $activeSchoolYear->id)
                ->where('semester', $validated['semester'])->exists()) {
        return back()->withErrors(['This semester already exists for this School Year.']);
    }

    // If 'is_current' is checked, make this the current semester and deactivate the others
    $isCurrent = $request->has('is_current') ? true : false;

    if ($isCurrent) {
        // Deactivate other semesters in this School Year
        Semester::where('school_year_id', $activeSchoolYear->id)
                ->update(['is_current' => false]);
    }

    $newSemester = Semester::create([
        'school_year_id' => $activeSchoolYear->id,
        'semester' => $validated['semester'],
        'is_current' => $isCurrent,
    ]);

    return redirect()->route('semester.index')->with('success', 'New Semester created.');
}


    public function storeSchoolYear(Request $request)
    {
        $validated = $request->validate([
            'start_date' => 'required|date',
            'end_date' => 'required|date|after:start_date',
        ]);

        $startYear = date('Y', strtotime($validated['start_date']));
        $endYear = date('Y', strtotime($validated['end_date']));
        $schoolYearStr = $startYear . '-' . $endYear;

        if (SchoolYear::where('school_year', $schoolYearStr)->exists()) {
            return back()->withErrors(['This School Year already exists.']);
        }

        // Deactivate old school year + semesters
        $prev = SchoolYear::where('is_active', true)->first();
        if ($prev) {
            $prev->update(['is_active' => false]);
            Semester::where('school_year_id', $prev->id)->update(['is_current' => false]);
        }

        $newSchoolYear = SchoolYear::create([
            'school_year' => $schoolYearStr,
            'start_date' => $validated['start_date'],
            'end_date' => $validated['end_date'],
            'is_active' => true,
        ]);

        // Create 1st Semester under new school year automatically
        Semester::create([
            'school_year_id' => $newSchoolYear->id,
            'semester' => '1st',
            'is_current' => true,
        ]);

        return redirect()->route('semester.index')->with('success', 'New School Year & 1st Semester created.');
    }

  

 public function validateStudentsForm(Request $request, $semesterId)
    {
        $newSemester = Semester::with('schoolYear')->findOrFail($semesterId);

        $allPreviousSemesterIds = Semester::where('id', '<', $semesterId)->pluck('id')->toArray();

        $students = Student::whereHas('profiles', function ($q) use ($allPreviousSemesterIds, $semesterId) {
            $q->whereIn('semester_id', array_merge($allPreviousSemesterIds, [$semesterId]));
        })
        ->with(['profiles' => function ($q) use ($allPreviousSemesterIds, $semesterId) {
            $q->whereIn('semester_id', array_merge($allPreviousSemesterIds, [$semesterId]));
        }])
        ->get();



        // Attach latest profile and validated flag
        $students = $students->map(function ($student) use ($newSemester) {
       $student->previousProfile = $student->profiles
            ->filter(fn($p) => $p->semester_id < $newSemester->id)
            ->sortByDesc('semester_id')
            ->first();

        $student->latestProfile = $student->profiles->sortByDesc('semester_id')->first();


        $validatedProfile = StudentProfile::where('student_id', $student->id)
            ->where('semester_id', $newSemester->id)
            ->first();

       $student->latestTransition = $student->transitions()
            ->where('semester_id', '<=', $newSemester->id)
            ->latest('semester_id')
            ->first();

        $shiftingInCurrentSemester = $student->transitions()
            ->where('semester_id', $newSemester->id)
            ->where('transition_type', 'Shifting In')
            ->exists();

            $student->currentOutTransition = $student->transitions()
                ->where('semester_id', $newSemester->id)
                ->whereIn('transition_type', ['Shifting Out', 'Transferring Out'])
                ->latest()
                ->first();

            $student->isReturningThisSem = $student->transitions()
                ->where('semester_id', $newSemester->id)
                ->where('transition_type', 'Returning Student')
                ->exists();

            $student->wasDroppedInPreviousSem = $student->transitions()
                ->where('semester_id', '<', $newSemester->id)
                ->where('transition_type', 'Dropped')
                ->exists();


        $student->showShiftingInPill = $shiftingInCurrentSemester;
        $student->validatedProfile = $validatedProfile;
        $student->alreadyValidated = $validatedProfile !== null;

        return $student;
    });

    $students = $students->sortBy(function ($student) {
    return strtolower($student->last_name . ' ' . $student->first_name);
})->values();


        // Apply filters
        if ($request->filled('filter_course')) {
            $students = $students->filter(function ($student) use ($request) {
                return $student->latestProfile && $student->latestProfile->course === $request->filter_course;
            });
        }

        if ($request->filled('filter_year_level')) {
            $students = $students->filter(function ($student) use ($request) {
                return $student->latestProfile && $student->latestProfile->year_level === $request->filter_year_level;
            });
        }

        if ($request->filled('filter_section')) {
            $students = $students->filter(function ($student) use ($request) {
                return $student->latestProfile && $student->latestProfile->section === $request->filter_section;
            });
        }

        if ($request->filled('search')) {
            $search = strtolower($request->search);
            $students = $students->filter(function ($student) use ($search) {
                return str_contains(strtolower($student->student_id), $search) ||
                       str_contains(strtolower($student->first_name), $search) ||
                       str_contains(strtolower($student->last_name), $search);
            });
        }

        if ($request->filled('filter_transition_type')) {
            $type = $request->input('filter_transition_type');
            $students = $students->filter(function ($student) use ($type) {
                return $student->latestTransition && $student->latestTransition->transition_type === $type;
            });
        }



        // Paginate
        $currentPage = LengthAwarePaginator::resolveCurrentPage();
        $perPage = 10;
        $paginated = new LengthAwarePaginator(
            $students->forPage($currentPage, $perPage),
            $students->count(),
            $perPage,
            $currentPage,
            ['path' => request()->url(), 'query' => request()->query()]
        );

        $courses = Course::all();
        $years = Year::all();
        $sections = Section::all();

       
        return view('semester.validate_students', [
            'students' => $paginated,
            'newSemester' => $newSemester,
            'courses' => $courses,
            'years' => $years,
            'sections' => $sections,
        ]);
    }


public function processValidateStudents(Request $request, $semesterId)
{
    $validated = $request->validate([
        'selected_students' => 'required|array',
        'selected_students.*' => 'exists:students,id',
    ]);

    $studentsData = $request->input('students', []);
    $transitionData = $request->input('transitions', []);
    $semester = Semester::findOrFail($semesterId);

    foreach ($validated['selected_students'] as $studentId) {
        if (!isset($studentsData[$studentId])) continue;

        $data = $studentsData[$studentId];
        if (empty($data['course']) || empty($data['year_level']) || empty($data['section'])) continue;

        $student = Student::find($studentId);

        // Transition handling
        if (isset($transitionData[$studentId])) {
            $transition = $transitionData[$studentId];
            $type = $transition['transition_type'] ?? null;
            $date = now();

            if ($type && $type !== 'None') {
                if ($type === 'Shifting In') {
                    // Get latest profile (prior to this semester)
                    $latestProfile = $student->profiles()
                        ->where('semester_id', '<', $semester->id)
                        ->orderByDesc('semester_id')->first();

                    $previousSemesterId = $latestProfile?->semester_id;

                    // Create 'Shifting Out' record
                    if ($previousSemesterId) {
                        $shiftOutTransition = StudentTransition::firstOrCreate([
                            'student_id' => $studentId,
                            'semester_id' => $previousSemesterId,
                            'transition_type' => 'Shifting Out',
                        ], [
                            'first_name' => $student->first_name,
                            'last_name' => $student->last_name,
                            'transition_date' => $date,
                            'remark' => 'Auto-generated shift out',
                        ]);
                    }

                    // Create 'Shifting In' record
                    $shiftInTransition = StudentTransition::firstOrCreate([
                        'student_id' => $studentId,
                        'semester_id' => $semester->id,
                        'transition_type' => 'Shifting In',
                    ], [
                        'first_name' => $student->first_name,
                        'last_name' => $student->last_name,
                        'transition_date' => $date,
                        'remark' => $transition['remark'] ?? null,
                    ]);

                    if ($shiftInTransition->wasRecentlyCreated && $request->hasFile("transition_images.$studentId")) {
                        foreach ($request->file("transition_images.$studentId") as $file) {
                            $path = $file->store('transition_images', 'public');
                            StudentTransitionImage::create([
                                'student_transition_id' => $shiftInTransition->id,
                                'image_path' => $path,
                            ]);
                        }
                    }
                } else {
                    $transitionIn = StudentTransition::firstOrCreate([
                    'student_id' => $studentId,
                    'semester_id' => $semester->id,
                    'transition_type' => $type,
                ], [
                    'first_name' => $student->first_name,
                    'last_name' => $student->last_name,
                    'transition_date' => $date,
                    'remark' => $transition['remark'] ?? null,
                ]);

                // Attach images only if the transition is newly created (not existing)
                if ($transitionIn->wasRecentlyCreated && $request->hasFile("transition_images.$studentId")) {
                    foreach ($request->file("transition_images.$studentId") as $file) {
                        $path = $file->store('transition_images', 'public');
                        StudentTransitionImage::create([
                            'student_transition_id' => $transitionIn->id,
                            'image_path' => $path,
                        ]);
                    }
                }


                    // Skip creating profile for students going out
                   // if (in_array($type, ['Shifting Out', 'Transferring Out'])) {
                   //    continue;
                   // }
                }
            }
        }

        // Validation / Profile logic
        $existingProfile = StudentProfile::withTrashed()
            ->where('student_id', $studentId)
            ->where('semester_id', $semester->id)
            ->first();

        if ($existingProfile) {
            if ($existingProfile->trashed()) {
                $existingProfile->restore();
                $existingProfile->update([
                    'course' => $data['course'],
                    'year_level' => $data['year_level'],
                    'section' => $data['section'],
                ]);
            }
            continue;
        }

        // Create new profile
        StudentProfile::create([
            'student_id' => $studentId,
            'semester_id' => $semester->id,
            'course' => $data['course'],
            'year_level' => $data['year_level'],
            'section' => $data['section'],
        ]);

        // After StudentProfile::create(...);

$previousSemesterIds = Semester::where('id', '<', $semester->id)->pluck('id');

$inProgressContracts = Contract::where('student_id', $studentId)
    ->whereIn('semester_id', $previousSemesterIds)
    ->where('status', 'In Progress')
    ->get();

foreach ($inProgressContracts as $contract) {
    // Check if contract already carried over to current sem
    $existing = Contract::where('student_id', $studentId)
        ->where('original_contract_id', $contract->id)
        ->where('semester_id', $semester->id)
        ->first();

    if (!$existing) {
        $newContract = $contract->replicate(); // clone attributes
        $newContract->semester_id = $semester->id;
        $newContract->status = 'In Progress';
        $newContract->original_contract_id = $contract->id; // NEW FIELD
        $newContract->save();

        // Copy related images (if applicable)
        foreach ($contract->images as $image) {
            $newContract->images()->create([
                'image_path' => $image->image_path,
            ]);
        }
    }
}
// Carry over IN PROGRESS COUNSELING records
$inProgressCounselings = \App\Models\Counseling::where('student_id', $studentId)
    ->whereIn('semester_id', $previousSemesterIds)
    ->where('status', 'In Progress')
    ->get();

foreach ($inProgressCounselings as $counseling) {
    // Check if already carried over
    $existing = \App\Models\Counseling::where('student_id', $studentId)
        ->where('original_counseling_id', $counseling->id)
        ->where('semester_id', $semester->id)
        ->first();

    if (!$existing) {
        $newCounseling = $counseling->replicate();
        $newCounseling->semester_id = $semester->id;
        $newCounseling->status = 'In Progress';
        $newCounseling->original_counseling_id = $counseling->id; // Make sure this column exists
        $newCounseling->save();

        // Copy attached images (if any)
        foreach ($counseling->images as $image) {
            $newCounseling->images()->create([
                'image_path' => $image->image_path,
            ]);
        }
    }
}


    }

    return redirect()->route('semester.validate', $semester->id)
        ->with('success', 'Selected students validated and transitions recorded.');
}

// public function undoValidation(Request $request, $semesterId, $studentId)
// {
//     $semester = Semester::findOrFail($semesterId);

//     $profile = StudentProfile::where('semester_id', $semester->id)
//         ->where('student_id', $studentId)
//         ->first();

//     if ($profile) {
//         $profile->delete();
//         return back()->with('success', 'Validation undone for student.');
//     }

//     return back()->with('error', 'No validation found for this student in this semester.');
// }


//   public function storeStudentTransition(Request $request)
// {
//     $request->validate([
//         'student_id' => 'required|exists:students,id',
//         'transition_type' => 'required|in:None,Shifting In,Shifting Out,Transferring In,Transferring Out,Dropped,Returning Student',
//         'transition_date' => 'required|date',
//         'remark' => 'nullable|string',
//     ]);

//     $activeSemester = Semester::where('is_current', true)->first();

//     if (!$activeSemester) {
//         return back()->with('error', 'No active semester is set.');
//     }

//     $student = Student::findOrFail($request->student_id);

//     StudentTransition::create([
//         'student_id' => $student->id,
//         'semester_id' => $activeSemester->id,
//         'first_name' => $student->first_name,
//         'last_name' => $student->last_name,
//         'transition_type' => $request->transition_type,
//         'transition_date' => $request->transition_date,
//         'remark' => $request->remark,
//     ]);

//    return redirect()->route('students.profile', ['id' => $student->id])->with('success', 'Incoming student transition recorded.');

// }
}