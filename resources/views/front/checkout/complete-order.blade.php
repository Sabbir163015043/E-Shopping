
@extends('front.master')

@section('body')
<div class ="men">
    <div class="container">
    @if($message = Session::get('message'))
    @endif
        
        <div class="login" >
            <div class="container-fluid">
                <div class="row"  >
                    <div class="col-lg-12">
                    <h2 >Congratulation.. Your Order Has Being Sussesfully .<br> We Will Contact As Soon As Possible..<br> Do You have any query pleass call<i class="fas fa-mobile"></i> 999</h2>
                
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>
@endsection