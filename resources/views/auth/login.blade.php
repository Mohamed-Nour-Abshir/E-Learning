<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
 {{-- pop-up-model  --}}
 <script>
    $(document).ready(function(){
       $("#myModal").modal('show');
    });
 </script>
<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title text-success">Check Our E-learning Site</h5>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <p>UserName: <span class="text-success h-1">user@test.com</span></p>
                <p>Password: <span class="text-success h-1">123456789</span></p>
               
            </div>
        </div>
    </div>
</div>
@extends('layouts.app')

@section('content')


<div class="body d-flex p-0 p-xl-5">
    <div class="container-xxl">
        <div class="row g-0">
            <div class="col-lg-6 d-none d-lg-flex justify-content-center align-items-center rounded-lg auth-h100">
                <div style="max-width: 25rem;">
                    <div class="text-center mb-5">
                        <img src="{{ asset('assets/images/kaizen/kaizen.png') }}" alt="" width="180px">
                    </div>
                    <div class="mb-5">
                        <h2 class="color-900 text-center">E-Learning Platform</h2>
                    </div>
                    <!-- Image block -->
                    <div class="">
                        <img src="{{ asset('assets/images/online-study.svg') }}" alt="online-study">
                    </div>
                </div>
            </div>

            <div class="col-lg-6 d-flex justify-content-center align-items-center border-0 rounded-lg auth-h100">
                <div class="w-100 p-4 p-md-5 card card-color border-0 text-light" style="max-width: 32rem;">
                    <!-- Form -->
                    <form class="row g-1 p-0 p-4" method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="col-12 text-center mb-5">
                            <h1>Sign in</h1>
                        </div>
                        <div class="col-12 text-center mb-4">
                            <h6 class="dividers mt-4" style="color: white;"><b>E-Learning Software</b></span>
                        </div>
                        <div class="col-12">
                            <div class="mb-2">
                                <label class="form-label">Email address</label>
                                <input type="email" class="form-control form-control-lg @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-2">
                                <div class="form-label">
                                    <span class="d-flex justify-content-between align-items-center">
                                        Password
                                    </span>
                                </div>
                                <input type="password" class="form-control form-control-lg @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                <label class="form-check-label" for="flexCheckDefault">
                                    Remember me
                                </label>
                            </div>
                        </div>
                        <div class="col-12 text-center mt-4">
                            <button type="submit" class="btn btn-lg btn-block btn-light lift text-uppercase">
                                {{ __('SIGN IN') }}
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div> <!-- End Row -->

    </div>
</div>
@endsection