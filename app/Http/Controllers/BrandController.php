<?php

namespace App\Http\Controllers;
use App\Models\Brand;

use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function create()
    {
        return view('admin.brand.add');
    }
    public function manage()
    {
        return view('admin.brand.manage',[
            'brands' => Brand::all()
        ]);
    }

    public function newBrand(Request $request)
    {
        $brand = new Brand();
        $brand->name = $request->name;
        $brand->description = $request->description;
        $brand->status = $request->status;
        $brand->save();


        return redirect()->back()->with('message','Brand Info Create Succesfully..');
    }

    public function editBrand($id)
    {
        $brand = Brand::find($id);
        return view('admin.brand.edit',[
            'brand' => $brand
        ]);
        

    }
    public function update( Request $request)
    {
       $brand = Brand::find($request->id);
       $brand->name = $request->name;
       $brand->description = $request->description;
       $brand->status = $request->status;
       $brand->save();


        return redirect('/manage-brand')->with('message', 'Category Info Update  Succesfully');
    }
    public function delete($id)
    {
        $brand = Brand::find($id);
        $brand->delete();

        return redirect('/manage-brand')->with('message','Category Delete Succesfully');
    }
}
