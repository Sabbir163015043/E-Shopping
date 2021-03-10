@extends('admin.master')


@section('body')

<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Order</h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Manage Order</a>
</div>

<table class="table table-bordered">
    <div class="row">
     <div class="container"> 
        <tr>
           <th>SL No.</th>
           <th>Order Id</th>
           <th>Customer Name</th>
           <th>Mobile Number</th>
           <th>Order Total</th>
           <th>Order Date</th>
           <th>Payment Type</th>
           <th>Payment Status</th>
           <th>Order Status</th>
           <th>Action</th>
       </tr>
    
       @foreach($orders as $key => $order)
        <tr>
       <td>{{ $loop->iteration }}</td>
        <td>{{ $order->id }}</td>
        <td>{{ $order->customer->name }}</td>
        <td>{{ $order->customer->mobile }}</td>
        <td>{{ $order->order_total }}</td>  
        <td>{{ $order->order_date }}</td>  
        <td>{{ $order->payment_type }}</td>
        <td>{{ $order->payment_status }}</td>
        <td>{{ $order->order_status }}</td>
             
        <td>
            <a href="{{ route('view-order-detail',['id' => $order->id]) }}" class="btn btn-success"><i class="fas fa-info-circle"></i></a>
            <a href="{{ route('view-order-invoice',['id' => $order->id]) }}" class="btn btn-success"><i class="fas fa-file-invoice"></i></a>
            <a href="{{ route('download-order-invoice',['id' => $order->id]) }}" class="btn btn-success"><i class="fas fa-download"></i></a>
            <a href="{{ route('edit-order',['id' => $order->id]) }}" class="btn btn-success"><i class="fas fa-edit"></i> </a>
            <a href="{{ route('delete-order',['id' => $order->id]) }}" class="btn btn-danger" onclick="return confirm('Are your Sure this file delete')"><i class="fas fa-trash"></i></a>
                
        </td>
        </tr>
       @endforeach
    
     </div>
    </div>
</table>

@endsection