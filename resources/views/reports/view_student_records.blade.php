<x-app-layout>
    <x-slot name="header">
        <h2 class="text-2xl font-bold text-gray-800 dark:text-gray-200">
            {{ __('Student History') }}: {{ $student->first_name }} {{ $student->last_name }}
        </h2>
    </x-slot>

    <div class="max-w-7xl mx-auto sm:px-4 lg:px-8 py-6">
        <div class="space-y-6">
            <!-- Back Button -->
             <a href="{{ route('report') }}" class="inline-flex items-center px-4 py-2 bg-white border border-gray-300 text-sm font-semibold text-[#a82323] rounded hover:bg-gray-100 transition">
                &larr; Back to Reports
            </a>


            <!-- Instructions -->
            <div class="bg-[#fef3f2] border border-[#fca5a5] text-[#a82323] rounded p-4 text-sm">
                <p class="font-medium mb-1">Viewing Student Record</p>
                <p>Below is the complete student history for the selected school year and semester.</p>
            </div>

            <!-- Student Info Card -->
            <div class="bg-white border rounded-lg shadow p-6 space-y-6 hover:shadow-lg transition">
                <!-- Header -->
                <div class="flex justify-between">
                    <h1 class="text-2xl font-extrabold text-[#a82323]">
                    {{ $student->last_name }}, {{ $student->first_name }} {{ $student->middle_name }}. {{ $student->suffix }}
                </h1>
               <div x-data="{ open: false, exportType: 'all' }">
    <!-- Export Button -->
    <button @click="open = true"
        class="bg-[#a82323] text-white px-4 py-2 rounded shadow hover:bg-red-700 transition text-sm">
        Export Student History
    </button>

    <!-- Modal Overlay -->
    <div x-show="open" class="fixed inset-0 bg-black bg-opacity-40 z-40" @click="open = false"></div>

    <!-- Modal Content -->
    <div x-show="open" class="fixed z-50 top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2
                bg-white p-6 rounded-lg shadow-lg w-full max-w-xl space-y-4">
        <h2 class="text-lg font-bold text-[#a82323]">Export Student History</h2>

        <form method="GET" target="_blank" class="space-y-4">
            <input type="hidden" name="student_id" value="{{ $student->id }}">
            <input type="hidden" name="school_year_id" value="{{ request('school_year_id') }}">
            <input type="hidden" name="semester_name" value="{{ request('semester_name') }}">

            <!-- Export Type Dropdown -->
            <div>
                <label class="font-semibold text-sm text-gray-700">Export Type</label>
                <select name="export_type" x-model="exportType"
                        class="w-full border rounded px-3 py-1 text-sm mt-1">
                    <option value="all">All</option>
                    <option value="contracts">Contracts</option>
                    <option value="referrals">Referrals</option>
                    <option value="counselings">Counseling</option>
                </select>
            </div>

            <!-- Contract Filters -->
            <div x-show="exportType === 'contracts' || exportType === 'all'" class="grid grid-cols-1 md:grid-cols-2 gap-2">
                <select name="filter_contract_type" class="border rounded px-3 py-1 text-sm">
                    <option value="">All Contract Types</option>
                    @foreach ($contractTypesList as $type)
                        <option value="{{ $type->type }}">{{ $type->type }}</option>
                    @endforeach
                </select>

                <select name="filter_contract_status" class="border rounded px-3 py-1 text-sm">
                    <option value="">All Contract Status</option>
                    <option value="In Progress">In Progress</option>
                    <option value="Completed">Completed</option>
                </select>
            </div>

            <!-- Referral Filters -->
            <div x-show="exportType === 'referrals' || exportType === 'all'">
                <select name="filter_reason" class="w-full border rounded px-3 py-1 text-sm">
                    <option value="">All Referral Reasons</option>
                    @foreach ($referralReasons as $reason)
                        <option value="{{ $reason->reason }}">{{ $reason->reason }}</option>
                    @endforeach
                </select>
            </div>

            <!-- Counseling Filters -->
            <div x-show="exportType === 'counselings' || exportType === 'all'">
                <select name="filter_counseling_status" class="w-full border rounded px-3 py-1 text-sm">
                    <option value="">All Counseling Status</option>
                    <option value="In Progress">In Progress</option>
                    <option value="Completed">Completed</option>
                </select>
            </div>

            <!-- Export Buttons -->
            <div class="flex items-center gap-4 mt-2">
                <button type="submit" formaction="{{ route('export.student.pdf') }}"
                        class="bg-[#a82323] text-white px-3 py-1 rounded text-sm">
                    Export as PDF
                </button>

                <button type="submit" formaction="{{ route('export.student.excel') }}"
                        class="bg-green-600 text-white px-3 py-1 rounded text-sm">
                    Export as Excel
                </button>
            </div>

            <div class="text-right">
                <button type="button" @click="open = false" class="text-sm text-gray-600 hover:underline">Cancel</button>
            </div>
        </form>
    </div>
</div>


                </div>

                <!-- Section: Basic Info -->
                <section>
                    <h3 class="text-xl font-semibold text-[#a82323] border-b pb-2 mb-2">Student Information</h3>
                    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
                        <x-student-info label="Student ID" :value="$student->student_id" />
                        {{-- <x-student-info label="Birthday" :value="$student->birthday?->format('F j, Y')" /> --}}
                        <x-student-info label="Gender" :value="$student->gender ?? 'N/A'" />
                        <x-student-info label="Course, Year & Section" :value="($profile?->course ?? 'N/A') . ' - ' . ($profile?->year_level ?? '') . ($profile?->section ?? '')" />
                       <x-student-info label="School Year" :value="$schoolYearName" />

                        <x-student-info label="Semester" :value="$semesterName ?? 'N/A'" />
                    </div>
                </section>

                <!-- Tabs: Contract, Referral, Counseling -->
                <div x-data="{ tab: 'contracts' }" class="bg-white border rounded-lg shadow p-6 space-y-6 hover:shadow-lg transition">

                    <!-- Tab Buttons -->
                    <div class="border-b border-gray-200 mb-4">
                        <nav class="-mb-px flex space-x-6 text-sm font-medium">
                            <button @click="tab = 'contracts'" :class="{ 'border-[#a82323] text-[#a82323]': tab === 'contracts', 'border-transparent text-gray-500 hover:text-gray-700': tab !== 'contracts' }"
                                class="whitespace-nowrap border-b-2 py-2 px-1">Contracts</button>

                            <button @click="tab = 'referrals'" :class="{ 'border-[#a82323] text-[#a82323]': tab === 'referrals', 'border-transparent text-gray-500 hover:text-gray-700': tab !== 'referrals' }"
                                class="whitespace-nowrap border-b-2 py-2 px-1">Referrals</button>

                            <button @click="tab = 'counseling'" :class="{ 'border-[#a82323] text-[#a82323]': tab === 'counseling', 'border-transparent text-gray-500 hover:text-gray-700': tab !== 'counseling' }"
                                class="whitespace-nowrap border-b-2 py-2 px-1">Counseling</button>
                            <button @click="tab = 'transitions'"
                                :class="{ 'border-[#a82323] text-[#a82323]': tab === 'transitions', 'border-transparent text-gray-500 hover:text-gray-700': tab !== 'transitions' }"
                                class="whitespace-nowrap border-b-2 py-2 px-1">
                                Transitions
                            </button>

                            </nav>
                    </div>

                    <!-- Contracts Tab -->
                    <div x-show="tab === 'contracts'" x-cloak>
                        <h3 class="text-xl font-semibold text-[#a82323] mb-2">Contract Records</h3>
                        <p class="text-sm text-gray-500 mb-3">Formal agreements and behavioral contracts entered by the student.</p>
                       
                       <!-- Filters for Contracts -->
<form method="GET" class="mb-4 flex flex-wrap gap-2">
    <input type="hidden" name="school_year_id" value="{{ request('school_year_id') }}">
    <input type="hidden" name="semester_name" value="{{ request('semester_name') }}">

    <select name="filter_contract_type" class="border rounded px-3 py-1 text-sm">
        <option value="">All Contract Types</option>
        @foreach ($contractTypesList as $type)
            <option value="{{ $type->type }}" @selected(request('filter_contract_type') == $type->type)>
                {{ $type->type }}
            </option>
        @endforeach
    </select>

    <select name="filter_contract_status" class="border rounded px-3 py-1 text-sm">
        <option value="">All Status</option>
        <option value="In Progress" @selected(request('filter_contract_status') == 'In Progress')>In Progress</option>
        <option value="Completed" @selected(request('filter_contract_status') == 'Completed')>Completed</option>
    </select>

    <button type="submit" class="bg-[#a82323] text-white px-3 py-1 rounded text-sm">Filter</button>
</form>

                        <div class="overflow-auto">
                            <table class="min-w-full text-sm border rounded">
                                <thead class="bg-gray-100 text-left">
                                    <tr>
                                        <th class="px-4 py-2">Date</th>
                                        <th class="px-4 py-2">Type</th>
                                        <th class="px-4 py-2">Status</th>
                                        <th class="px-4 py-2">Start</th>
                                        <th class="px-4 py-2">End</th>
                                        <th class="px-4 py-2">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($contracts as $contract)
                                        <tr class="border-b hover:bg-gray-50">
                                            <td class="px-4 py-2">{{ \Carbon\Carbon::parse($contract->contract_date)->format('F j, Y') }}</td>
                                            <td class="px-4 py-2">{{ $contract->contract_type }}
                                                @if ($contract->original_contract_id)
    <span class="badge bg-yellow-200 text-yellow-800">Carried Over</span>
@endif

                                            </td>
                                            <td class="px-4 py-2">{{ $contract->status }}</td>
                                            <td class="px-4 py-2">{{ $contract->start_date }}</td>
                                            <td class="px-4 py-2">{{ $contract->end_date }}</td>
                                            <td class="px-4 py-3 text-right">
                                                <a href="{{ route('contracts.view', ['id' => $contract->id, 'source' => 'report']) }}"
                                                class="text-blue-600 hover:text-blue-800 hover:underline inline-flex items-center gap-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                                    </svg>
                                                    View
                                                </a>
                                            </td>
                                        </tr>
                                    @empty
                                        <tr><td colspan="6" class="text-center py-3 text-gray-500">No contracts found.</td></tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Referrals Tab -->
                    <div x-show="tab === 'referrals'" x-cloak>
                        <h3 class="text-xl font-semibold text-[#a82323] mb-2">Referral Records</h3>
                        <p class="text-sm text-gray-500 mb-3">Cases or concerns referred by faculty or staff for counseling or guidance intervention.</p>
                       <!-- Filters for Referrals -->
<form method="GET" class="mb-4 flex flex-wrap gap-2">
    <input type="hidden" name="school_year_id" value="{{ request('school_year_id') }}">
    <input type="hidden" name="semester_name" value="{{ request('semester_name') }}">

    <select name="filter_reason" class="border rounded px-3 py-1 text-sm">
        <option value="">All Referral Reasons</option>
        @foreach ($referralReasons as $reason)
            <option value="{{ $reason->reason }}" @selected(request('filter_reason') == $reason->reason)>
                {{ $reason->reason }}
            </option>
        @endforeach
    </select>

    <button type="submit" class="bg-[#a82323] text-white px-3 py-1 rounded text-sm">Filter</button>
</form>

                        <div class="overflow-auto">
                            <table class="min-w-full text-sm border rounded">
                                <thead class="bg-gray-100 text-left">
                                    <tr>
                                        <th class="px-4 py-2">Date</th>
                                        <th class="px-4 py-2">Reason</th>
                                        <th class="px-4 py-2">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($referrals as $referral)
                                        <tr class="border-b hover:bg-gray-50">
                                            <td class="px-4 py-2">{{ $referral->referral_date }}</td>
                                            <td class="px-4 py-2">{{ $referral->reason }}</td>
                                            <td class="px-4 py-2">
                                                <a href="{{ route('referrals.view', ['id' => $referral->id, 'source' => 'report']) }}"
                                                class="text-[#a82323] hover:underline">View</a>
                                            </td>
                                        </tr>
                                    @empty
                                        <tr><td colspan="3" class="text-center py-3 text-gray-500">No referrals found.</td></tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Counseling Tab -->
                    <div x-show="tab === 'counseling'" x-cloak>
                        <h3 class="text-xl font-semibold text-[#a82323] mb-2">Counseling Records</h3>
                        <p class="text-sm text-gray-500 mb-3">Sessions and outcomes for counseling services received by the student.</p>
                       <!-- Filters for Counseling -->
                        <form method="GET" class="mb-4 flex flex-wrap gap-2">
                            <input type="hidden" name="school_year_id" value="{{ request('school_year_id') }}">
                            <input type="hidden" name="semester_name" value="{{ request('semester_name') }}">

                            <select name="filter_counseling_status" class="border rounded px-3 py-1 text-sm">
                                <option value="">All Status</option>
                                <option value="In Progress" @selected(request('filter_counseling_status') == 'In Progress')>In Progress</option>
                                <option value="Completed" @selected(request('filter_counseling_status') == 'Completed')>Completed</option>
                            </select>

                            <button type="submit" class="bg-[#a82323] text-white px-3 py-1 rounded text-sm">Filter</button>
                        </form>

                        <div class="overflow-auto">
                            <table class="min-w-full text-sm border rounded">
                                <thead class="bg-gray-100 text-left">
                                    <tr>
                                        <th class="px-4 py-2">Date</th>
                                        <th class="px-4 py-2">Status</th>
                                        <th class="px-4 py-2">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($counselings as $counseling)
                                        <tr class="border-b hover:bg-gray-50">
                                            <td class="px-4 py-2">{{ $counseling->counseling_date }}</td>
                                            <td class="px-4 py-2">{{ $counseling->status }}</td>
                                            <td class="px-4 py-2">
                                                <a href="{{ route('counseling.view', ['id' => $counseling->id, 'source' => 'report']) }}"
                                                class="text-[#a82323] hover:underline">View</a>
                                            </td>
                                        </tr>
                                    @empty
                                        <tr><td colspan="3" class="text-center py-3 text-gray-500">No counseling records found.</td></tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Transitions Tab -->
<div x-show="tab === 'transitions'" x-cloak>
    <h3 class="text-xl font-semibold text-[#a82323] mb-2">Transition Records</h3>
    <p class="text-sm text-gray-500 mb-3">Track student transitions such as transfers, shifting courses, etc.</p>

    <!-- Optional: Filters -->
    
    <form method="GET" class="mb-4 flex flex-wrap gap-2">
        <select name="filter_transition_type" class="border px-3 py-2 rounded w-full sm:w-auto focus:border-red-300 focus:ring focus:ring-red-200 focus:ring-opacity-50">
                            <option value="">All Types</option>
                            @foreach(['Shifting In', 'Shifting Out', 'Transferring In', 'Transferring Out', 'Dropped', 'Returning Student'] as $type)
                                <option value="{{ $type }}" {{ request('filter_transition_type') == $type ? 'selected' : '' }}>
                                    {{ $type }}
                                </option>
                            @endforeach
                        </select>
        <button type="submit" class="bg-[#a82323] text-white px-3 py-1 rounded text-sm">Filter</button>
    </form>
   

    <div class="overflow-auto">
        <table class="min-w-full text-sm border rounded">
            <thead class="bg-gray-100 text-left">
                <tr>
                    <th class="px-4 py-2">Date</th>
                    <th class="px-4 py-2">Type</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($transitions as $transition)
                    <tr class="border-b hover:bg-gray-50">
                        <td class="px-4 py-2">{{ \Carbon\Carbon::parse($transition->transition_date)->format('F j, Y') }}</td>
                        <td class="px-4 py-2">{{ $transition->transition_type }}</td>
                        <td class="px-4 py-3 text-right">
                                                    <a href="{{ route('transitions.show', ['transition' => $transition->id, 'source' => 'report']) }}"  class="text-blue-600 hover:text-blue-800 hover:underline inline-flex items-center gap-1">
                                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                                        </svg>
                                                        View
                                                    </a>
                                                </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="4" class="text-center py-3 text-gray-500">No transitions found.</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>

                </div>

            </div>
        </div>
    </div>
</x-app-layout>
