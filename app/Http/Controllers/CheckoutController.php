<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Customer;
use App\Models\Shipping;
use App\Models\Product;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Payment;
use Cart;

use Session;

class CheckoutController extends Controller
{
    public function index()
    {
        return view('front.checkout.checkout',[
            'categories' => Category::where('status',1)->get(),
        ]);
    }

    public function checkEmailAddress()
    {
        $email = $_GET['email'];

        $customer = Customer :: where('email', $email)->first();
        if($customer)
        {
            $data = [
                'success' => false,
                'message' => 'Sorry,this email address already exists.pleass try another one'

            ];
        }
        else{
            $data = [
                'success' => true,
                'message' => 'This email address is valid'

            ];
        }

        return json_encode($data);
    }

    public function newCustomer(Request $request)
    {
       $customer = new Customer();
       $customer -> name     = $request->name;
       $customer -> email    = $request->email;
       $customer -> mobile   = $request->mobile;
       $customer -> password = bcrypt($request->password);
       $customer -> address  = $request->address;
       $customer->save();

       Session::put('customer_id', $customer->id);
       Session::put('customer_name', $customer->name);

       

       return redirect('/show-shipping')->with('message','Congratulation...Your Registation Has Succesfully.. ');
    }
    public function customerLogout(Request $request)
    {
        Session::forget('customer_id');
        Session::forget('customer_name');

        return redirect('/')->with('message','You are sussesfully logout.. ');

    }
    public function customerLogin(Request $request)
    {
        $customer = Customer::where('email', $request->email)->first();
        if($customer) {

            if (password_verify($request->password,$customer->password )) {
                Session::put('customer_id', $customer->id);
                Session::put('customer_name', $customer->name);

                return redirect('/show-shipping')->with('message','Congratulation...Your LogIn Has Succesfully.. ');

            } else {

                return redirect()->back()->with('message','Sorry ! Your password is wrong.. ');

            }
        }
        else
        {
            return redirect()->back()->with('message','Sorry ! Your email address is wrong.. ');
        }
        
    }

    public function shipping()
    {
        return view('front.checkout.shipping',[
            'categories' => Category::where('status',1)->get(),
             'customer'  => Customer::find(Session::get('customer_id'))
        ]);
    }

    public function newShipping(Request $request)
    {
        $shipping = new Shipping();
        $shipping -> name     = $request->name;
        $shipping -> email    = $request->email;
        $shipping -> mobile   = $request->mobile;
        $shipping -> address  = $request->address;
        $shipping->save();

        Session::put('shipping_id', $shipping->id);

        return redirect('/show-payment')->with('message','Your Order Shipping Address Has Succesfully.. ');

    }

    public function payment()
    {
        return view('front.checkout.payment',[
            'categories' => Category::where('status',1)->get(),
        ]);
    }
    public function newOrder(Request $request) 
    {
        $paymentMethod = $request->payment_method;
        if($paymentMethod == 'cash')
        {
            $order = new Order();
            $order -> customer_id = Session::get('customer_id');
            $order -> shipping_id = Session::get('shipping_id');
            $order -> order_total = Session::get('grand_total');
            $order -> payment_type = $paymentMethod;
            $order -> order_date  = date('Y-m-d');
            $order -> save();

            $cartProducts = Cart::content();
            foreach($cartProducts as $cartProduct)
            {
                $orderDetail = new OrderDetail();
                $orderDetail->order_id       = $order->id;
                $orderDetail->product_id     = $cartProduct->id;
                $orderDetail->product_name   = $cartProduct->name;
                $orderDetail->product_image  = $cartProduct->options->image;
                $orderDetail->product_price  = $cartProduct->price;
                $orderDetail->product_qty    = $cartProduct->qty;
                $orderDetail->save();
                
                Cart::remove($cartProduct->rowId);

                $product = Product::find($cartProduct->id);
                $product -> stock_amount = ($product -> stock_amount - $cartProduct -> qty);
                $product -> save();

            }
                $payment = new Payment();
                $payment->order_id	= $order->id;
                $payment->payment_method	= $paymentMethod;
                $payment->payment_amount	= 0;
                $payment->payment_date	= date('Y-m-d');
                $payment->save();

                Session::put('grand_total',0);

                return redirect('/complete-order')->with('message','Your Order Status Has Succesfully Complete.. ');

        }
        else if ($paymentMethod == 'online')
        {
            return view('front.checkout.online-payment',[
                'categories' => Category::where('status',1)->get(),
                'customer'   => Customer ::find(Session::get('customer_id')),
                'tran_id'    => rand(1, 1000000)
            ]);
        }
    } 
    public function confirmOnlinePayment(Request $request)
    {
        return $request->all();
    } 
    public function completeOrder()
    { 
       
        return view('front.checkout.complete-order',[
            'categories' => Category::where('status',1)->get(),
        ]);
    }

}




