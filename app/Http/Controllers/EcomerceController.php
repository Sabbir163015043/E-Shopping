<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\SubImage;


class EcomerceController extends Controller
{
    public function index()
    {
        return view('front.home.home',[
            'products' => Product::OrderBy('id','desc')->get(),
            'categories' => Category::where('status',1)->get()
        ]);
    }

    public function CategoryProduct($id)
    {
        return view('front.category.category-product',[
            'categories' => Category::where('status',1)->get(),
            'products'   => Product::where('category_id',$id)->where('status',1)->OrderBy('id','desc')->get()
        ]);
    }

    public function ProductDetail($id)
    {
        $product=Product::find($id);
        return view('front.product.product-detail',[
            'categories' => Category::where('status',1)->get(),
            'product'   => $product,
            'sub_images' => SubImage::where('product_id',$id)->get(),
            'related_products' => Product::where('category_id', $product->category_id)->where('status',1)->OrderBy('id','desc')->get()
        ]);
    }
}
