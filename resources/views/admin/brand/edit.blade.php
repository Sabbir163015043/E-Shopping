@extends('admin.master')


@section('body')

<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Category</h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Add category</a>
</div>

<form action="{{ route('update-brand', $brand ->id) }}" method="POST">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="card card-body rounded-0">
           
                <div class="form-group row">
                    <label class="control-label col-md-2">Brand Name</label>
                        <div class="col-md-10">
                            <input type="text" value="{{ $brand->name }}" name="name" class="form-control">
                            <input type="hidden" name="id" value="{{ $brand->id }}"/>
                        </div>
                </div>
                <div class="form-group row">
                    <label class="control-label col-md-2">Brand Description</label>
                        <div class="col-md-10">
                            <textarea type="text" name="description" class="form-control">{{ $brand->description }}</textarea>
                        </div>
                </div>
                <div class="form-group row">
                    <label class="control-label col-md-2">Publication Status</label>
                        <div class="col-md-10">
                            <label><input type="radio" name="status" {{ $brand->status == 1 ? 'checked' : ''}} value="1"/>Published</label>
                            <label><input type="radio" name="status" {{ $brand->status == 0 ? 'checked' : ''}} value="0"/>Unpublished</label>
                        </div>
                </div>
                <div class="form-group row">
                    <label class="control-label col-md-2"></label>
                        <div class="col-md-10">
                            <input type="submit" name="btn" class="btn btn-success" value="Update New Brand">
                        </div>
                </div>
            </div>
        </div>
    </div>

</form>

@endsection