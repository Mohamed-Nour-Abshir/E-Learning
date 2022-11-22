<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use App\Models\Payment;
use App\Models\Setting;
use Illuminate\Http\Request;

class PaymentReceivedController extends Controller
{
    public function index()
    {
        $admission = Admission::all();

        return view('admin.payment.payment-received-view', compact('admission'));
    }
    public function store(Request $request)
    {
        $notification = [
            'message' => 'Payment Received Successfully',
            'alert-type' => 'success',
        ];

        $payment = new Payment([
            'studentID' => $request->get('studentID'),
            'course_id' => $request->get('course'),
            'batch_id' => $request->get('batch'),
            'date' => $request->get('admission_date'),
            'student_name' => $request->get('student_name'),
            'student_email' => $request->get('student_email'),
            'student_phone' => $request->get('student_phone'),
            'course_price' => $request->get('course_price'),
            'discount' => $request->get('discount'),
            'due' => $request->get('due'),
            'total_payment' => $request->get('total_payment'),
            'received_amount' => $request->get('received_amount'),
        ]);

        $payment->save();
        $settings = Setting::first();
        // $admission = Admission::with('course', 'batch')->where('admissions.id', $payment->id)->first();
        $payment = Payment::with('course', 'batch')->where('payments.id', $payment->id)->first();
        return view('admin.payment.payment-received-list', compact('settings', 'payment'))->with($notification);
    }
}