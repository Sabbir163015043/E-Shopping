@extends('admin.master')


@section('body')

<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Order</h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Edit Order</a>
</div>

<form action="{{ route('update-order') }}" method="POST">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="card card-body rounded-0">
            @if($message = Session::get('message'))
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
            {{$message}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            @endif
                <div class="form-group row">
                    <label class="control-label col-md-2">Order Status</label>
                        <div class="col-md-10">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="order_status" id="inlineRadio1" value="Complete">
                            <label class="form-check-label" for="inlineRadio1">Complete</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="order_status" id="inlineRadio2" value="Cancel">
                            <label class="form-check-label" for="inlineRadio2">Cancel</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="order_status" id="inlineRadio3" value="Pending" >
                            <label class="form-check-label" for="inlineRadio3">Pending</label>
                            </div>
                        </div>
                </div>
                <div class="form-group row">
                    <label class="control-label col-md-2">Payment Status</label>
                        <div class="col-md-10">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="payment_status" id="inlineRadio11" value="Complete">
                            <label class="form-check-label" for="inlineRadio11">Complete</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="payment_status" id="inlineRadio22" value="Cancel">
                            <label class="form-check-label" for="inlineRadio22">Cancel</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="payment_status" id="inlineRadio33" value="Pending" >
                            <label class="form-check-label" for="inlineRadio33">Pending</label>
                            </div>
                        </div>
                </div>
                <div class="form-group row">
                    <label class="control-label col-md-2">Received Amount</label>
                        <div class="col-md-10">
                            <input type="number" value="{{ $order->order_total }}" readonly name="amount" class="form-control"/>
                            <input type="hidden" value="{{ $order->id }}" name="id"/>
                        </div>
                </div>
                <div class="form-group row">
                    <label class="control-label col-md-2"></label>
                        <div class="col-md-10">
                            <input type="submit" name="btn" class="btn btn-success" value="Update Order Status">
                        </div>
                </div>
            </div>
        </div>
    </div>

</form>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
@endsection