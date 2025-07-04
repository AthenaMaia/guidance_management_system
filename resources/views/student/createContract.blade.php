
<div x-show="open"
     x-transition
     class="fixed inset-0 bg-gray-800 bg-opacity-50 z-40 flex items-center justify-center"
     style="display: none;">

    <div class="bg-white rounded-xl shadow-lg w-96 p-6 relative overflow-y-auto max-h-[90vh]">

       
        <button @click="open = false" 
                class="absolute top-2 right-2 text-gray-600 hover:text-gray-900 text-xl">
            &times;
        </button>

        <h2 class="text-lg font-semibold mb-3 text-center">New Contract</h2>

        <form action="{{ route('contracts.store') }}" method="POST" class="space-y-3">
            @csrf
           <input type="hidden" name="redirect_to" value="student_contract">
    <input type="hidden" name="student_id" value="{{ $student->id }}">

            <!-- Semester -->
            <div>
                <label class="text-sm">Semester:</label>
                <select name="semester_id" required class="w-full mt-1 border-gray-300 rounded">
                     @foreach ($semesters as $semester)
                        <option value="{{ $semester->id }}">
                            A.Y {{ $semester->school_year }} {{ $semester->semester }} Semester
                            @if($semester->is_current) — Active @endif
                        </option>
                    @endforeach
                </select>
            </div>

            <!-- Contract Date -->
            <div>
                <label class="text-sm">Contract Date:</label>
                <input type="date" name="contract_date" required class="w-full mt-1 border-gray-300 rounded">
            </div>

            <!-- Content -->
            <div>
                <label class="text-sm">Content:</label>
                <textarea name="content" required class="w-full mt-1 border-gray-300 rounded"></textarea>
            </div>

            <!-- Total Days -->
            <div>
                <label class="text-sm">Total Days:</label>
                <input type="number" name="total_days" min="1" class="w-full mt-1 border-gray-300 rounded">
            </div>

            <!-- Completed Days -->
            <div>
                <label class="text-sm">Completed Days:</label>
                <input type="number" name="completed_days" min="0" class="w-full mt-1 border-gray-300 rounded">
            </div>

            <!-- Status -->
            <div>
                <label class="text-sm">Status:</label>
                <select name="status" required class="w-full mt-1 border-gray-300 rounded">
                    <option value="In Progress">In Progress</option>
                    <option value="Completed">Completed</option>
                </select>
            </div>

            <!-- Buttons -->
            <div class="flex justify-end space-x-2 pt-2">
                <x-secondary-button type="button" @click="open = false">Cancel</x-secondary-button>
                <x-primary-button type="submit" >Save</x-primary-button>
            </div>
        </form>
    </div>
</div>
