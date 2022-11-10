@php

$user = Auth::guard('web')->user();

@endphp

<div class="header">
    <nav class="navbar py-4">
        <div class="container-xxl">

            <!-- header rightbar icon -->
            <div class="h-right d-flex align-items-center mr-5 mr-lg-0 order-1">

                @if($user->can('New Admission'))
                <a href="{{ route('admission.create') }}" class="btn btn-outline-info fw-bold" style="margin-right: 60px;">New Admission</a>
                @endif
                <div class="dropdown user-profile ml-2 ml-sm-3 d-flex align-items-center zindex-popover">
                    <div class="u-info me-2">
                        <p class="mb-0 text-end line-height-sm "><span class="font-weight-bold">{{ Auth::user()->name }}</span></p>
                        <small>{{ Auth::user()->designation }}</small>
                    </div>
                    <a class="nav-link dropdown-toggle pulse p-0" href="#" role="button" data-bs-toggle="dropdown" data-bs-display="static">
                        <img class="avatar lg rounded-circle img-thumbnail" src="{{ asset('profile-image') . '/' . Auth::user()->image }}" alt="profile">
                    </a>
                    <div class="dropdown-menu rounded-lg shadow border-0 dropdown-animation dropdown-menu-end p-0 m-0">
                        <div class="card border-0 w280">
                            <div class="card-body pb-0">
                                <div class="d-flex py-1">
                                    <img class="avatar rounded-circle" src="{{ asset('profile-image') . '/' . Auth::user()->image }}" alt="profile">
                                    <div class="flex-fill ms-3">
                                        <p class="mb-0"><span class="font-weight-bold">{{ Auth::user()->name }}</span></p>
                                        <small class="">{{ Auth::user()->email }}</small>
                                    </div>
                                </div>
                                <div>
                                    <hr class="dropdown-divider border-dark">
                                </div>
                            </div>
                            <div class="list-group m-2 ">
                                @if($user->can('Profile'))
                                <a href="{{ route('profile.view') }}" class="list-group-item list-group-item-action border-0 "><i class="icofont-graduate-alt fs-6 me-3"></i>Profile</a>
                                @endif
                                @if($user->can('Change Password'))
                                <a href="{{ route('change-password') }}" class="list-group-item list-group-item-action border-0 "><i class="icofont-ui-password fs-5 me-3"></i>Change Password</a>
                                @endif
                                @if($user->can('Sign Out'))
                                <form method="POST" action="{{ route('logout') }}">
                                    {{ csrf_field() }}
                                    <button type="submit" class="list-group-item list-group-item-action border-0"><i class="icofont-logout fs-6 me-3"></i>Sign Out</button>
                                </form>
                                <div>
                                    <hr class="dropdown-divider border-dark">
                                </div>
                                @endif
                                @if($user->can('Chat'))
                                <a href="{{ route('chatify') }}" class="list-group-item list-group-item-action border-0"><i class="icofont-chat fs-5 me-3"></i>Chat</a>
                                @endif
                                @if($user->can('Email'))
                                <a href="{{ route('student-email') }}" class="list-group-item list-group-item-action border-0"><i class="icofont-email fs-5 me-3"></i>Email</a>
                                @endif
                                @if($user->can('Settings'))
                                <a href="{{ route('settings.index') }}" class="list-group-item list-group-item-action border-0"><i class="icofont-ui-settings fs-5 me-3"></i>Settings</a>
                                @endif
                                @if($user->can('Accounts'))
                                <a href="{{ route('accounts.create') }}" class="list-group-item list-group-item-action border-0"><i class="icofont-contact-add fs-5 me-3"></i>Accounts</a>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- menu toggler -->
            <button class="navbar-toggler p-0 border-0 menu-toggle order-3" type="button" data-bs-toggle="collapse" data-bs-target="#mainHeader">
                <span class="fa fa-bars"></span>
            </button>

            <!-- main menu Search-->
            <div class="order-0 col-lg-4 col-md-4 col-sm-12 col-12 mb-3 mb-md-0">
                <div class="input-group flex-nowrap input-group-lg">
                    <button type="button" class="input-group-text" id="addon-wrapping"><i class="fa fa-search"></i></button>
                    <input type="search" class="form-control" placeholder="Search" aria-label="search" aria-describedby="addon-wrapping">
                    <button type="button" class="input-group-text add-member-top" id="addon-wrappingone" data-bs-toggle="modal" data-bs-target="#addUser"><i class="fa fa-plus"></i></button>
                </div>
            </div>

        </div>
    </nav>
</div>