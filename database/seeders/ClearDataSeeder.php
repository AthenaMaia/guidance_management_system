<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClearDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

       DB::table('student_profiles')->truncate(); 
       DB::table('student_semester_enrollments')->truncate(); 
      DB::table('students')->truncate();
      DB::table('semesters')->truncate();
       DB::table('contracts')->truncate();
       DB::table('referrals')->truncate();
       DB::table('counselings')->truncate();
    //     DB::table('years')->truncate();
    DB::table('school_years')->truncate();
      DB::statement('SET FOREIGN_KEY_CHECKS=1;');
   
    }
}
