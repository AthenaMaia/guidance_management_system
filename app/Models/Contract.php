<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class contract extends Model
{
    protected $fillable = [
    'student_id',
    'semester_id',
    'contract_date',
    'total_days',
    'completed_days',
    'status',
    'contract_image',
];


public function semester()
{
    return $this->belongsTo(Semester::class);
}

public function student()
{
    return $this->belongsTo(Student::class);
}




}
