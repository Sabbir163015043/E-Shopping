@extends('front.master')

@section('body')

<!-- Breadcrumb Start -->
<div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Products</a></li>
                    <li class="breadcrumb-item active">Login & Register</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Login Start -->
        
        <div class="login">
            <div class="container-fluid">
            @if($message = Session::get('message'))
            @endif
                <div class="row">
                    <div class="col-lg-8">
                    
                    <form action="{{ route('new-customer') }}" method="POST" class="form-horizontal">
                    @csrf
                    
                        <div class="register-form">
                        <h2>Registration Form</h2><br>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Name</label>
                                    <input class="form-control" type="text" name="name">
                                </div>
                                <div class="col-md-6">
                                    <label>E-mail</label>
                                    <input class="form-control" type="text" onblur="checkEmailAddress(this.value)" name="email">
                                    <span class="" id="emailStatusMessage"></span>
                                </div>
                                <div class="col-md-6">
                                    <label>Mobile No</label>
                                    <input class="form-control" type="text" name="mobile">
                                </div>
                                <div class="col-md-6">
                                    <label>Password</label>
                                    <input class="form-control" type="password" name="password">
                                </div>
                                <div class="col-md-12">
                                    <label>Address</label>
                                    <textarea class="form-control" type="text" name="address"></textarea>
                                </div>
                                <div class="col-md-12">
                                <input type="submit" class="btn btn-success" name="btn" id="regBtn" value="Registation"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    </form>
                    
                    <div class="col-lg-4">
                                <div class="login-form">
                                    <div class="row">
                                    <div class="panel panel-body text-center" style="background-color:lightgray">
                                    {{$message}}
                                </div>
                            <form action="{{ route('customer-login') }}" method="POST" class="form-horizontal">
                            @csrf
                            <h2>Login Form</h2></br>
                                        <div class="col-md-12">
                                            <label>E-mail</label>
                                            <input class="form-control" type="text" name="email">
                                        </div>
                                        <div class="col-md-12">
                                            <label>Password</label>
                                            <input class="form-control" type="text" name="password">
                                        </div>
                                        <div class="col-md-12">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="newaccount">
                                        <label class="custom-control-label" for="newaccount">Keep me signed in</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <input type="submit" class="btn btn-success" name="btn" value="LogIn"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
            </div>
        </div>
@endsection