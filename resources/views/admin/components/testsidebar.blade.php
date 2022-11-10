{{-- @php

use App\Models\Setting;

$user = Auth::guard('web')->user();
$settings = Setting::first();

@endphp

<div class="sidebar px-4 py-4 py-md-4  me-0" style="overflow: scroll;">
    <div class="d-flex flex-column h-100">
        <a href="{{ route('home') }}" class="mb-0 brand-icon">
            <span class="logo-icon">
                <img src="{{ asset('company-logo') . '/' . $settings->company_logo }}" alt="" width="80px">
            </span>
            <span class="logo-text">{{ $settings->title }}</span>
        </a>
        <!-- Menu: main ul -->
        <ul class="menu-list flex-grow-1 mt-3">
            @if(Auth::guard('web'))
            <li><a class="m-link active" href="{{ route('home') }}"><i class="icofont-ui-home"></i><span>Dashboard</span></a></li>
            @endif
            @if(Auth::guard('web'))
            
            @if(Auth::guard('web'))
            <li class="collapsed"><a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-users" href="#"><i class="icofont-users-social"></i><span>Manage Users</span><span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                <ul class="sub-menu collapse {{ Route::is('role-permission.create') || Route::is('role-permission.index') ? 'in' : '' }}" id="menu-users">
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('role-permission.create') }}"><span>Create Role</span></a></li>
                    @endif
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('role-permission.index') }}"><span>Role List</span></a></li>
                    @endif
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('user-create.create') }}"><span>Create User</span></a></li>
                    @endif
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('user-create.index') }}"><span>User List</span></a></li>
                    @endif
                </ul>
            </li>
            @endif
            @endif
            @if(Auth::guard('web'))
            <li><a class="m-link" href="{{ route('notice-board.index') }}"><i class="icofont-clip-board"></i> <span>Notice Board</span></a></li>
            @endif
            @if(Auth::guard('web'))
            <li><a class="m-link" href="{{ route('payment.index') }}"><i class="icofont-money"></i> <span>Payment Received</span></a></li>
            @endif
            @if(Auth::guard('web'))
            <li class="collapsed"><a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-Teachers" href="#"><i class="icofont-teacher"></i><span>Teachers</span><span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                <ul class="sub-menu collapse" id="menu-Teachers">
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('designation') }}"><span>Designation Add</span></a></li>
                    @endif
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('teacher.index') }}"><span>Teachers</span></a></li>
                    @endif
                </ul>
            </li>
            @endif
            @if(Auth::guard('web'))
            <li class="collapsed"><a class="m-link" data-bs-toggle="collapse" data-bs-target="#corses-Components" href="#"><i class="icofont-certificate"></i> <span>Courses</span><span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                <ul class="sub-menu collapse" id="corses-Components">
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('course-add.index') }}"><span>Courses Add</span></a></li>
                    @endif
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('course-details.index') }}"><span>Courses Details Add</span></a></li>
                    @endif
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('course-view') }}"><span>All Course</span></a></li>
                    @endif
                </ul>
            </li>
            @endif
            @if(Auth::guard('web'))
            <li class="collapsed"><a class="m-link" data-bs-toggle="collapse" data-bs-target="#batch-Components" href="#"><i class="icofont-architecture-alt"></i> <span>Batch</span><span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                <ul class="sub-menu collapse" id="batch-Components">
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('batch.index') }}"><span>Batch Create</span></a></li>
                    @endif
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('teacher-assign.index') }}"><span>Teacher Assign</span></a></li>
                    @endif
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('batch-list') }}"><span>Batch Lists</span></a></li>
                    @endif
                </ul>
            </li>
            @endif
            @if(Auth::guard('web'))
            <li class="collapsed"><a class="m-link" data-bs-toggle="collapse" data-bs-target="#class-Components" href="#"><i class="icofont-read-book-alt"></i> <span>Class</span><span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                <ul class="sub-menu collapse" id="class-Components">
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('class.index') }}"><span>Class Lists</span></a></li>
                    @endif
                    <!-- <li><a class="ms-link" href="{{ route('teacher-assign.index') }}"><span>Teacher Assign</span></a></li>
                    <li><a class="ms-link" href="{{ route('batch-list') }}"><span>Batch Lists</span></a></li> -->
                </ul>
            </li>
            @endif
            @if(Auth::guard('web'))
            <li class="collapsed"><a class="m-link" data-bs-toggle="collapse" data-bs-target="#admission-Components" href="#"><i class="icofont-ebook"></i><span>Admission</span><span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                <ul class="sub-menu collapse" id="admission-Components">
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('admission.index') }}"><span>Admission</span></a></li>
                    @endif
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('admission-lists') }}"><span>Admission Lists</span></a></li>
                    @endif
                </ul>
            </li>
            @endif
            @if(Auth::guard('web'))
            <li class="collapsed"><a class="m-link" data-bs-toggle="collapse" data-bs-target="#studentpanel-Components" href="#"><i class="icofont-users-alt-2"></i><span>Student Panel</span><span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                <ul class="sub-menu collapse" id="studentpanel-Components">
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('student-panel.create') }}"><span>Create Panel</span></a></li>
                    @endif
                    @if(Auth::guard('web'))
                    <li><a class="ms-link" href="{{ route('student-panel.index') }}"><span>Panel Lists</span></a></li>
                    @endif
                </ul>
            </li>
            @endif
        </ul>
        <!-- Theme: Switch Theme -->
        <ul class="list-unstyled mb-0">
            <li class="d-flex align-items-center justify-content-center">
                <div class="form-check form-switch theme-switch">
                    <input class="form-check-input" type="checkbox" id="theme-switch">
                    <label class="form-check-label" for="theme-switch">Enable Dark Mode!</label>
                </div>
            </li>
        </ul>
        <!-- Menu: menu collepce btn -->
        <button type="button" class="btn btn-link sidebar-mini-btn text-light">
            <span class="ms-2"><i class="icofont-bubble-right"></i></span>
        </button>
    </div>
</div> --}}
