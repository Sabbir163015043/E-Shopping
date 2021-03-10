@extends('admin.master')


@section('body')

<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Manage Brand</h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Manage Brand</a>
</div>

<table class="table table-bordered">
    <div class="row">
     <div class="container"> 
        <tr>
           <th>SL No.</th>
           <th>Category Name</th>
           <th>Category Description</th>
           <th> Status</th>
           <th>Action</th>
       </tr>
       @foreach($brands as $key => $brand)
        <tr>
       <td>{{ $loop->iteration }}</td>
        <td>{{ $brand->name}}</td>
        <td>{{ $brand->description}}</td>
        <td>{{ $brand->status == 1 ? 'published' : 'Unpublished'}}</td>
        <td>
            <a href="{{ route('edit-brand',[ 'id' => $brand->id]) }}" class="btn btn-success">Edit</a>
            <a href="{{ route('delete-brand',[ 'id' => $brand->id]) }}" class="btn btn-danger" onclick="return confirm('Are your Sure this file delete')">Delete</a>
                
        </td>
        </tr>
       @endforeach
    
     </div>
    </div>
</table>

@endsection