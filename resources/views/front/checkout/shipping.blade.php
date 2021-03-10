@extends('front.master')

@section('body')
<div class ="men">
    <div class="container">
    @if($message = Session::get('message'))
    @endif
<!-- Breadcrumb Start -->
<div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Products</a></li>
                    <li class="breadcrumb-item active">Shipping Form</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Login Start -->
        
        <div class="login">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                    <div class="panel panel-body text-center" style="background-color:gold">
                        <h4>Update Your Shipping Address If Your Billing Address & Shipping Address Is Change</h4>
                    </div>
                    <form action="{{ route('new-shipping') }}" method="POST" class="form-horizontal">
                    @csrf
                    
                        <div class="register-form">
                        <h1 style="margin-left:40%;">Shipping Form</h1><br>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Name</label>
                                    <input class="form-control" value="{{ $customer->name }}" type="text" name="name">
                                </div>
                                <div class="col-md-6">
                                    <label>E-mail</label>
                                    <input class="form-control"value="{{ $customer->email }}" type="text" name="email">
                                </div>
                                <div class="col-md-6">
                                    <label>Mobile No</label>
                                    <input class="form-control" value="{{ $customer->mobile }}" type="text" name="mobile">
                                </div>
                                <div class="col-md-6">
                                    <label>Address</label>
                                    <textarea class="form-control" type="text" name="address">{{ $customer->address }}</textarea>
                                </div>
                                <div class="col-md-12">
                                <input type="submit" class="btn btn-success" name="btn" value="Continue Shopping"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>
@endsection