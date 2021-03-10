@extends('admin.master')


@section('body')

<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Manage Product</h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Manage Product</a>
</div>

<table class="table table-bordered">
    <div class="row">
     <div class="container"> 
        <tr>
           <th>SL No.</th>
           <th>Category Name</th>
           <th>Brand Name</th>
           <th>Product Name</th>
           <th> Main Image</th>
           <th>Product Code</th>
           <th>Product Price</th>
           <th>Stock Amount</th>
           <th> Status</th>
           <th>Action</th>
       </tr>
    
        @foreach($products as $key => $product)

        <tr>
        <td>{{ $loop->iteration }}</td>
        <td>{{ $product -> category -> name }}</td>
        <td>{{ $product -> brand -> name }}</td>
        <td>{{ $product -> name }}</td>
        <td><img src="{{ asset($product->image) }}" alt="" height="60" width="90"></td>
        <td>{{ $product -> code }}</td>
        <td>{{ $product -> price }}</td>
        <td>{{ $product -> stock_amount }}</td>
        <td>{{ $product -> status == 1 ? 'Published' : 'Unpublished' }}</td>
        <td>
            <a href=" {{ route('view-product-detail',[ 'id' => $product->id]) }}" class="btn btn-success btn-sm">View</a>
            <a href="{{ route('edit-product',[ 'id' => $product->id]) }}" class="btn btn-success btn-sm">Edit</a>
            <a href="{{ route('delete-product',[ 'id' => $product->id]) }}" class="btn btn-danger btn-sm" onclick="return confirm('Are your Sure this file delete')">Delete</a>
                
        </td>
        </tr>

        @endforeach
        
     </div>
    </div>
</table>

@endsection