<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    use HasFactory;
    protected $fillable = [
        'studentID',
        'course_id',
        'batch_id',
        'date',
        'student_name',
        'student_email',
        'student_phone',
        'course_price',
        'discount',
        'due',
        'total_payment',
        'received_amount',
    ];

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function batch()
    {
        return $this->belongsTo(Batch::class);
    }
}