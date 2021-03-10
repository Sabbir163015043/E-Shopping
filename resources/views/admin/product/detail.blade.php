@extends('admin.master')


@section('body')

<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">View Product Details</h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> View Product</a>
</div>

<table class="table table-bordered">
    <div class="row">
     <div class="container"> 
        <tr>
            <th>Product Name</th>
            <td>{{ $product -> name }}</td>
        </tr>
        <tr>
            <th>Product Category Name</th>
            <td>{{ $product->category -> name }}</td>
        </tr>
        <tr>
            <th>Product Brand Name</th>
            <td>{{ $product -> brand -> name }}</td>
        </tr>
        <tr>
            <th>Product Code</th>
            <td>{{ $product -> code }}</td>
        </tr>
        <tr>
            <th>Product Price</th>
            <td>{{ $product -> price }}</td>
        </tr>
        <tr>
            <th>Stock Amount</th>
            <td>{{ $product -> stock_amount }}</td>
        </tr>
        <tr>
            <th>Short Description</th>
            <td>{{ $product -> short_description }}</td>
        </tr>
        <tr>
            <th> Long Description</th>
            <td>{{ $product -> long_description }}</td>
        </tr>
        <tr>
            <th> Main Image</th>
            <td><img src="{{ asset($product->image) }}" alt=""height="120" width="120"/></td>
        </tr>
        <tr>
            <th> Sub Images</th>
            <td>
                @foreach($product->subImages as $key =>$subImage)
                <img src="{{ asset($subImage->sub_Image) }}" alt="" height="120" width="120"/>
                @endforeach
            </td>
        </tr>
        <tr>
            <th> Publication Status</th>
            <td>{{ $product -> status== 1 ? 'Published' : 'Unpublished' }}</td>
        </tr>
        
     </div>
    </div>
</table>

@endsection