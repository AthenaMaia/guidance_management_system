<?php

namespace App\Http\Controllers;

use App\Models\contract;
use App\Models\ContractImage;
use App\Models\ContractType;
use App\Models\semester;
use App\Models\Student;
use Illuminate\Http\Request;

class ContractController extends Controller
{
    /**
     * Display a listing of the resource.
     */
  public function index(Request $request)
{
    $contracts = Contract::with('student', 'semester')->paginate(5);
    $semesters = Semester::all();
    $contractTypes = ContractType::all();

    $currentSemester = Semester::where('is_current', true)->first();

    if (!$currentSemester) {
        $students = collect(); // return empty collection if no active semester
    } else {
        // Get students who have profile for current semester (either newly added or validated)
        $students = Student::whereHas('profiles', function ($query) use ($currentSemester) {
            $query->where('semester_id', $currentSemester->id);
        })->with('profiles')->get();
    }

    return view('contracts.contract', compact('contracts', 'students', 'semesters', 'contractTypes'));
}


public function create()
{
    $currentSemester = Semester::where('is_current', true)->first();

    if (!$currentSemester) {
        return redirect()->back()->with('error', 'No active semester set. Please create and activate a semester first.');
    }

    $students = Student::whereHas('enrollments', function ($query) use ($currentSemester) {
        $query->where('semester_id', $currentSemester->id)
              ->where('is_enrolled', true);
    })->with('enrollments')->get();

    $semesters = Semester::all();
    $contractTypes = ContractType::all();

    return view('contracts.createContract', compact('students', 'semesters', 'contractTypes'));
}






public function store(Request $request)
{
    $validated = $request->validate([
        'student_id' => 'required|exists:students,id',
        'contract_date' => 'required|date',
        'contract_type' => 'required|exists:contract_types,type',
        'total_days' => 'nullable|integer|min:1',
        'start_date' => 'nullable|date',
        'end_date' => 'nullable|date',
        'remarks' => 'nullable|string|max:1000',
        'contract_images.*' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', // note the '.*'
        'status' => 'required|string',
    ]);

    $activeSemester = Semester::where('is_current', true)->first();
    if (!$activeSemester) {
        return back()->with('error', 'No active semester is set.');
    }

    $validated['semester_id'] = $activeSemester->id;

    $contract = Contract::create($validated);

    if ($request->hasFile('contract_images')) {
        foreach ($request->file('contract_images') as $image) {
            $path = $image->store('contract_images', 'public');
            ContractImage::create([
                'contract_id' => $contract->id,
                'image_path' => $path
            ]);
        }
    }

    return redirect()->back()->with('success', 'Contract created successfully.');
}



    /**
     * Display the specified resource.
     */
    public function show(contract $contract)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(contract $contract)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
   public function update(Request $request, $id)
{
    $validated = $request->validate([
        'contract_type' => 'required|string|max:255',
        'contract_date' => 'required|date',
        'total_days' => 'required|integer|min:1',
        'completed_days' => 'required|integer|min:0',
        'status' => 'required|string',
    ]);

    $contract = Contract::findOrFail($id);
    $contract->update($validated);

    return redirect()->back()->with('success', 'Contract updated successfully.');
}


    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
         $contract = Contract::findOrFail($id);
        $contract->delete();

        return redirect()->route('contracts.index')->with('success', 'Contract deleted successfully.');

    }

    public function createForStudent(Student $student)
{
    
    $semesters = Semester::all(); // For semester dropdown
    return view('student.createContract', compact('student', 'semesters'));
}

public function allContracts(Request $request)
{
    $query = Contract::with(['student', 'semester']);

    // Search by student name
    if ($request->has('search') && $request->search != '') {
        $query->whereHas('student', function ($q) use ($request) {
            $q->where('student_id', 'like', '%' . $request->search . '%')
              ->orwhere('first_name', 'like', '%' . $request->search . '%')
              ->orWhere('last_name', 'like', '%' . $request->search . '%');
        });
    }

    // Sort by field
    if ($request->has('sort_by') && $request->sort_by != '') {
        $sortField = $request->sort_by;
        $sortDirection = $request->get('sort_direction', 'asc'); 

        if (in_array($sortField, ['contract_date', 'status', 'total_days'])) {
            $query->orderBy($sortField, $sortDirection);
        }
    }

    $contracts = $query->paginate(10);
   
    $semesters = Semester::all();
    $contractTypes = ContractType::all(); 

    $currentSemester = Semester::where('is_current', true)->first();

    // ✅ Only validated students for the current semester
    $students = Student::whereHas('enrollments', function ($query) use ($currentSemester) {
        $query->where('semester_id', $currentSemester->id)
              ->where('is_enrolled', true); // assuming 'is_enrolled' indicates validated students
    })->with('enrollments')->get();

    return view('contracts.contract', compact('contracts', 'students', 'semesters', 'contractTypes'));
}


public function view($id)
{
    $contract = Contract::with('student')->findOrFail($id);
    return view('contracts.viewContract', compact('contract'));
}


public function markComplete($id)
{
    $contract = Contract::findOrFail($id);
    $contract->update(['status' => 'Completed']);

    return back()->with('success', 'Contract marked as Completed.');
}

public function markInProgress($id)
{
    $contract = Contract::findOrFail($id);
    $contract->update(['status' => 'In Progress']);

    return back()->with('success', 'Contract marked as In Progress.');
}




}
