<div x-show="openEditStudentModal"
     x-transition
     class="fixed inset-0 bg-gray-500 bg-opacity-50 z-50 flex items-center justify-center"
     style="display: none;">

    <div class="bg-white rounded-xl shadow-2xl w-full max-w-4xl p-8 relative overflow-y-auto max-h-[90vh]">

        <!-- Close Button -->
        <button @click="openEditStudentModal = false" 
                class="absolute top-3 right-3 text-gray-500 hover:text-gray-900 text-2xl transition">
            &times;
        </button>

        <h2 class="text-2xl font-bold mb-6 text-center text-gray-800">Edit Student Details</h2>

        <form action="{{ route('student.update', $student->id) }}" method="POST" class="space-y-6">
            @csrf
            @method('PUT')

            @if ($errors->any())
                <div class="bg-red-100 text-red-700 p-3 rounded-md text-sm">
                    <ul class="list-disc pl-5">
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <!-- Student Basic Info -->
            <div>
                <h3 class="text-lg font-semibold mb-3">Basic Information</h3>
                <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                    <div>
                        <label for="student_id" class="text-sm font-medium text-gray-700">Student ID</label>
                        <x-text-input id="student_id" type="text" name="student_id" 
                                      :value="old('student_id', $student->student_id)" required readonly
                                      class="w-full mt-1 border-gray-300 rounded-lg" />
                    </div>

                    <div>
                        <label for="first_name" class="text-sm font-medium text-gray-700">First Name</label>
                        <x-text-input id="first_name" type="text" name="first_name" 
                                      :value="old('first_name', $student->first_name)" required 
                                      class="w-full mt-1 border-gray-300 rounded-lg" />
                    </div>

                    <div>
                        <label for="last_name" class="text-sm font-medium text-gray-700">Last Name</label>
                        <x-text-input id="last_name" type="text" name="last_name" 
                                      :value="old('last_name', $student->last_name)" required 
                                      class="w-full mt-1 border-gray-300 rounded-lg" />
                    </div>

                    <div>
                        <label for="middle_name" class="text-sm font-medium text-gray-700">Middle Name (optional)</label>
                        <x-text-input id="middle_name" type="text" name="middle_name" 
                                      :value="old('middle_name', $student->middle_name)" 
                                      class="w-full mt-1 border-gray-300 rounded-lg" />
                    </div>
    
                    <div>
                        <label for="suffix" class="text-sm font-medium text-gray-700">Suffix</label>
                        <select name="suffix" id="suffix" class="w-full mt-1 border-gray-300 rounded-lg">
                            <option value="" {{ old('suffix', $student->suffix) == '' ? 'selected' : '' }}>None</option>
                            <option value="Jr." {{ old('suffix', $student->suffix) == 'Jr.' ? 'selected' : '' }}>Jr.</option>
                            <option value="Sr." {{ old('suffix', $student->suffix) == 'Sr.' ? 'selected' : '' }}>Sr.</option>
                            <option value="III" {{ old('suffix', $student->suffix) == 'III' ? 'selected' : '' }}>III</option>
                            <option value="IV" {{ old('suffix', $student->suffix) == 'IV' ? 'selected' : '' }}>IV</option>
                        </select>
                    </div>

                    <div>
                        <label for="birthday" class="text-sm font-medium text-gray-700">Birthday</label>
                        <x-text-input id="birthday" type="date" name="birthday"
                            :value="old('birthday', isset($student->birthday) ? $student->birthday->format('Y-m-d') : '')" required
                            class="w-full mt-1 border-gray-300 rounded-lg" />
                    </div>

                    <div>
                        <label for="gender" class="text-sm font-medium text-gray-700">Gender</label>
                        <select name="gender" id="gender" required class="w-full mt-1 border-gray-300 rounded-lg">
                            <option value="">Select Gender</option>
                            <option value="Male" {{ old('gender', $student->gender) == 'Male' ? 'selected' : '' }}>Male</option>
                            <option value="Female" {{ old('gender', $student->gender) == 'Female' ? 'selected' : '' }}>Female</option>
                            <option value="Other" {{ old('gender', $student->gender) == 'Other' ? 'selected' : '' }}>Other</option>
                        </select>
                    </div>
                </div>
            </div>

             <div>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div>
                            <label for="home_address" class="text-sm text-gray-600">Home Address <span class="text-red-500"></span></label>
                            <x-text-input id="home_address" name="home_address" type="text" :value="old('home_address', $student->home_address)" placeholder="e.g. 123 Purok St."  class="mt-1 w-full border-gray-300 rounded"/>
                        </div>

                        <div>
                            <label for="student_contact" class="text-sm text-gray-600">Contact no. <span class="text-red-500"></span></label>
                            <input id="student_contact" name="student_contact" type="tel" :value="old('student_contact', $student->student_contact)" placeholder=""  class="mt-1 w-full border-gray-300 rounded"/>
                        </div>
                    </div>
                </div>
         

           

            <!-- Action Buttons -->
            <div class="flex justify-end space-x-4 mt-8 border-t pt-4">
                <x-secondary-button type="button" @click="openEditStudentModal = false">
                    Cancel
                </x-secondary-button>
                <x-primary-button type="submit">
                    Update
                </x-primary-button>
            </div>

        </form>
    </div>
</div>
