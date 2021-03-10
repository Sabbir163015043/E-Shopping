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
                    <div class="panel panel-body text-center" style="background-color:lightgray">
                        {{$message}}
                    </div>
                    <form action="{{ route('new-order') }}" method="POST" class="form-horizontal">
                    @csrf
                    
                        <div class="register-form">
                        <h1 style="margin-left:30%;"> Select Payment Method</h1><br>
                            <div class="row">
                                <div class="col-md-12">
                                <table class="table table-bordard" style="border: 1px solid lightgray;">
                                <tr>
                                    <th>Cash On Delivery</th>
                                    <td><input type="radio" name="payment_method" value="cash"/></td>
                                </tr>
                                <tr>
                                    <th>Online</th>
                                    <td><input type="radio" name="payment_method" value="online"/></td>
                                </tr>
                                </table>
                                </div>
                                <div class="col-md-12 ">
                                <input type="submit" class="btn btn-success" style="margin-left:40%;" name="btn" value="Confirm Order"/>
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