<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAdmissionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('admissions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('studentID')->nullable();
            $table->bigInteger('course_id')->unsigned()->nullable();
            $table->foreign('course_id')->references('id')->on('courses')->cascadeOnDelete();
            $table->bigInteger('batch_id')->unsigned()->nullable();
            $table->foreign('batch_id')->references('id')->on('batches')->cascadeOnDelete();
            $table->date('date')->nullable();
            $table->string('student_name')->nullable();
            $table->string('student_email')->nullable();
            $table->string('student_phone')->nullable();
            $table->string('emergency_phone')->nullable();
            $table->string('relationwith_emergency_phone')->nullable();
            $table->string('name_ofrelation_number')->nullable();
            $table->string('religion')->nullable();
            $table->string('gender')->nullable();
            $table->string('blood_group')->nullable();
            $table->string('nid')->nullable();
            $table->longText('present_address')->nullable();
            $table->longText('permanent_address')->nullable();
            $table->string('course_price')->nullable();
            $table->string('discount')->nullable();
            $table->string('due')->nullable();
            $table->string('total_payment')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('admissions');
    }
}