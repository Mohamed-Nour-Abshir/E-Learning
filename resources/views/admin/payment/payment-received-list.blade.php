@extends('admin.layouts.app')

@section('title')
E-Learning | Student payment Information Show
@endsection

@push('css')
<style>
    .text-custom {
        margin-left: 350px;
    }

    .mr-top {
        margin-top: -30px;
    }
</style>
@endpush

@section('content')


<section class="printPage">
    <div class="order-list" style="text-align: right;">
        <div class="col-12 text-right mb-3">
            <button id="print" class="btn btn-success text-white" onclick="window.print()">Print Preview</button>
            {{-- <a href="{{ url('generate-pdf') }}" class="btn btn-success text-white">PDF Download</a>  --}}
            <a href="{{ route('payment.index') }}" class="btn btn-danger text-white">Back</a>
        </div>
    </div>
    <div class="modal-content">
        <div class="modal-body">
            <div class="col-12 text-center mb-4">
                <h4 class="modal-title text-success" id="exampleModalLiveLabel"><img src="{{ asset('assets/images/kaizen/favicon.png') }}" alt="" width="40px">&nbsp;&nbsp;<b>{{ $settings->company_name }}</b></h4>
                <p class="mb-1"><b>Office:</b>{{ $settings->address }}</p>
                <p class="mb-1"><b>Mobile:</b>{{ $settings->company_phone }}</p>
                <p class="mb-1"><b>Email: </b>{{ $settings->company_email }}, <b>Web: </b>{{ $settings->web_link }}</p>
            </div>
            <div class="col-12 text-center mb-3">
                <h6 class="btn btn-success text-white"><b>Admission Form</b></h6>
            </div>
            <hr>
            <div class="order-list">
                <div class="col-12 text-right mb-3">
                    <h6 class="modal-title text-success" id="exampleModalLiveLabel"><b>Personal Information</b></h6>
                </div>
                <hr>
                <ul class="list-group">
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Student ID</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top"> <strong>{{ $payment->studentID }}</strong></span>
                        </div>
                    </li>
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Student Name</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top"> <strong>{{ $payment->student_name }}</strong></span>
                        </div>
                    </li>
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Student Email</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top"> <strong>{{ $payment->student_email }}</strong></span>
                        </div>
                    </li>
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Student Phone Number</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top"> <strong>{{ $payment->student_phone }}</strong></span>
                        </div>
                    </li>
                </ul>
                <hr>
                <div class="col-12 text-right mb-3">
                    <h6 class="modal-title text-success" id="exampleModalLiveLabel"><b>Course Information</b></h6>
                </div>
                <hr>
                <ul class="list-group">
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Course Name</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top"> <strong>{{ $payment->course->course_name }}</strong></span>
                        </div>
                    </li>
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Batch Name</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top"> <strong>{{ $payment->batch->batch_name }}</strong></span>
                        </div>
                    </li>
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Course Lession</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top"> <strong>{{ $payment->course->course_lessons }}</strong></span>
                        </div>
                    </li>
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Course Length</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top"> <strong>{{ $payment->course->course_length }} Hour</strong></span>
                        </div>
                    </li>
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Course Session</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top"> <strong>{{ $payment->batch->batch_session }}</strong></span>
                        </div>
                    </li>
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Batch Time</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top"> <strong>{{ $payment->batch->batch_time }}</strong></span>
                        </div>
                    </li>
                </ul>
                <hr>
                <div class="col-12 text-right mb-3">
                    <h6 class="modal-title text-success" id="exampleModalLiveLabel"><b>Payment Details</b></h6>
                </div>
                <hr>
                <ul class="list-group">
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Course Fee</h6>
                        <div class=" d-flex align-items-center">
                            <span class="text-custom mr-top text-success"> <strong>BDT. {{ $payment->course_price }}</strong></span>
                        </div>
                    </li>
                    <li class="list-group-item  flex-wrap">
                        <h6 class="fw-bold">Total Paid</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top"> <strong>BDT. {{ $payment->total_payment }}</strong></span>
                        </div>
                    </li>
                    <li class="list-group-item  flex-wrap">
                        <h6 class="fw-bold">Payment Received</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top text-success"> <strong>BDT. {{ $payment->received_amount }}</strong></span>
                        </div>
                    </li>
                    <li class="list-group-item flex-wrap">
                        <h6 class="fw-bold">Due</h6>
                        <div class="d-flex align-items-center">
                            <span class="text-custom mr-top text-danger"> <strong>BDT. {{ $payment->due }}</strong></span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="order-list mt-4">
            <div class="col-12 text-right mb-3">
                <ul class="list-group">
                    <li class="list-group-item d-flex flex-wrap">
                        <span>
                            <hr>
                            <strong>Student Signature</strong>
                        </span>
                        <div class="ms-auto d-flex align-items-center">
                            <span>
                                <hr>
                                <strong> Authority Signature</strong>
                            </span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-12 mb-3">
            <div class="upcoming-lessons">
                <div class="card-body">
                    <div class="d-flex align-items-center justify-content-between bunch_list">
                        <div class="task_status">

                        </div>
                        <div class="task_status">

                        </div>
                        <div class="lesson_name text-center">
                            <img src="{{ asset('assets/images/sponsor-logo/basis_logo.png') }}" alt="" class="" width="100px">
                        </div>
                        <div class="assignment_name">
                            <img src="{{ asset('assets/images/sponsor-logo/bitm-logo.png') }}" alt="" class="" width="100px">
                        </div>
                        <div class="submit_time">
                            <img src="{{ asset('assets/images/sponsor-logo/ILO.png') }}" alt="" class="" width="100px">
                        </div>
                        <div class="task_status">

                        </div>
                        <div class="task_status">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
@endsection

@push('script')
<script>
    $('#print').click(function() {
        $('.modal-content').printPage();
    });

    $('a.printPage').click(function() {
        window.print();
        return false;
    });
</script>
@endpush