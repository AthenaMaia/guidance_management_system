<?php

namespace App\Http\Controllers;

use App\Models\StudentProfile;
use App\Models\Student;
use App\Models\Contract;
use App\Models\Referral;
use App\Models\Counseling;
use App\Models\Semester;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $activeSemester = Semester::where('is_current', true)->first();

       
        if (!$activeSemester) {
            return view('dashboard', [
                'totalStudents' => 0,
                'totalContracts' => 0,
                'totalReferrals' => 0,
                'totalCounselings' => 0,
                'recentContracts' => collect(),
                'recentReferrals' => collect(),
                'recentCounselings' => collect(),
                'systemTotalStudents' => 0,
                'systemTotalContracts' => 0,
                'systemTotalReferrals' => 0,
                'systemTotalCounselings' => 0,
            ]);
        }

        // Students validated for the current semester
        $validatedStudentIds = StudentProfile::where('semester_id', $activeSemester->id)
            ->pluck('student_id')
            ->unique();

        $totalStudents = $validatedStudentIds->count();

        // CURRENT SEMESTER totals
        $totalContracts = Contract::whereIn('student_id', $validatedStudentIds)
            ->where('semester_id', $activeSemester->id)
            ->count();

        $totalReferrals = Referral::whereIn('student_id', $validatedStudentIds)
            ->where('semester_id', $activeSemester->id)
            ->count();

        $totalCounselings = Counseling::whereIn('student_id', $validatedStudentIds)
            ->where('semester_id', $activeSemester->id)
            ->count();

        $systemTotalStudents = Student::count();

        $systemTotalContracts = Contract::whereNull('original_contract_id')->count();
        $systemTotalReferrals = Referral::whereNull('original_referral_id')->count();
        $systemTotalCounselings = Counseling::whereNull('original_counseling_id')->count();

        $recentContracts = Contract::with('student')
            ->whereIn('student_id', $validatedStudentIds)
            ->where('semester_id', $activeSemester->id)
            ->latest()
            ->take(5)
            ->get();

        $recentReferrals = Referral::with('student')
            ->whereIn('student_id', $validatedStudentIds)
            ->where('semester_id', $activeSemester->id)
            ->latest()
            ->take(5)
            ->get();

        $recentCounselings = Counseling::with('student')
            ->whereIn('student_id', $validatedStudentIds)
            ->where('semester_id', $activeSemester->id)
            ->latest()
            ->take(5)
            ->get();

        return view('dashboard', compact(
            'totalStudents',
            'totalContracts',
            'totalReferrals',
            'totalCounselings',
            'systemTotalStudents',
            'systemTotalContracts',
            'systemTotalReferrals',
            'systemTotalCounselings',
            'recentContracts',
            'recentReferrals',
            'recentCounselings'
        
        ));
    }
}
