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

<form action="{{ route('update-product') }}" method="POST" enctype="multipart/form-data">
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
                    <label class="control-label col-md-2"> Category Name </label>
                        <div class="col-md-10">
                            <select class="form-control" name="category_id">
                                <option> ---Select Product Category--- </option>
                                @foreach($categories as $key => $category)
                                    <option value="{{ $category->id }}"{{ $product->category_id == $category->id ? 'selected' : ''}}>{{$category->name }}</option>
                                    @endforeach
                            </select>
                            </div>
                        </div>
                        <div class="form-group row">
                    <label class="control-label col-md-2"> Brand Name </label>
                        <div class="col-md-10">
                            <select class="form-control" name="brand_id">
                                <option> ---Select Product Brand--- </option>
                                    @foreach($brands as $key => $brand)
                                    <option value="{{ $brand->id }}"{{ $product->brand_id == $brand->id ? 'selected' : ''}}>{{$brand->name }}</option>
                                    @endforeach
                            </select>
                            </div>
                        </div>
                        <div class="form-group row">
                         <label class="control-label col-md-2"> Product Name </label>
                        <div class="col-md-10">
                            <input type="text" name="name" value="{{ $product->name }}" class="form-control"/>
                            <input type="hidden" name="id" value="{{ $product->id }}"/>
                            </div>
                            </div>
                            <div class="form-group row">
                         <label class="control-label col-md-2"> Product Code </label>
                        <div class="col-md-10">
                            <input type="text" name="code" value="{{ $product->code }}" class="form-control"/>
                           
                            </div>
                            </div>
        
                    <div class="form-group row">      
                     <label class="control-label col-md-2"> Product Price </label>
                        <div class="col-md-10">
                            <input type="text" name="price" value="{{ $product->price }}" class="form-control"/>
                           
                            </div>
                            </div>
                    <div class="form-group row">      
                     <label class="control-label col-md-2"> Stock Amount </label>
                        <div class="col-md-10">
                        <input type="text" name="stock_amount" value="{{ $product->stock_amount }}" class="form-control"/>
                            
                            </div>
                            </div>
            <div class="form-group row">
                    <label class="control-label col-md-2"> Short Description </label>
                        <div class="col-md-10">
                        <textarea name="short_description"  class="form-control">{{ $product->short_description }}</textarea>
                            </div>
                            </div>  
             <div class="form-group row">
                    <label class="control-label col-md-2"> Long Description </label>
                        <div class="col-md-10">
                        <textarea name="long_description"  class="form-control">{{ $product->long_description }}</textarea>
                            </div>   
                            </div>
                <div class="form-group row">
                    <label class="control-label col-md-2"> Main Image </label>
                        <div class="col-md-10">
                        <input type="file" name="image" class="form-control-file" accepte="image/*" />
                            <img src="{{ asset($product->image) }}" height="60" width="90" alt="">
                            </div>
                            </div>  
            <div class="form-group row">
            <label class="control-label col-md-2"> Sub Images </label>
                        <div class="col-md-10">
                        <input type="file" name="sub_Image[]" multiple accept="image/*" class="form-control-file"/>
                            @foreach($product->subImages as $key =>$subImage)
                             <img src="{{ asset($subImage->sub_Image) }}" alt="" height="60" width="80"/>
                             @endforeach
                            </div>  
            </div>

            <div class="form-group row">
                    <label class="control-label col-md-2"> Publication Status </label>
                    <div class="col-md-10">
                        <Label><input type="radio" name="status"{{ $product->status == 1 ? 'checked' : ''}} value="1"/> Published </Label>
                        <Label><input type="radio" name="status" {{ $product->status == 0 ? 'checked' : ''}} value="0"/> UnPublished </Label>
                </div> 
                </div>
            <div class="form-group row">
                    <label class="control-label col-md-2"> </label>
                        <div class="col-md-10">
                            <input type="submit" name="btn" class="btn btn-success" value="Update New Product"/>
            </div>
            </div>
    
            
            </div>
            </div>

        </div>

</form>

@endsection