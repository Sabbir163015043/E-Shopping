<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Customer;
use App\Models\Shipping;
use App\Models\Payment;
use PDF;

class AdminOrderController extends Controller
{
    public function index()
    {
        return view('admin.order.manage',[
            'orders' => Order::orderBy('id','desc')->get()
        ]);
    }
    public function viewOrderDetail($id)
    {
        $order = Order::find($id);
        return view('admin.order.order-detail',[
            'order'    => $order,
            'products' => OrderDetail::where('order_id',$order->id)->get(),
            'customer' => Customer::find($order->customer_id),
            'shipping' => Shipping::find($order->shipping_id),
            'payment'  => Payment::where('order_id', $order->id)->first(),
        ]);
    }
    public function viewOrderInvoice($id)
    {
        $order = Order::find($id);
        return view('admin.order.invoice-detail',[
            'order'    => $order,
            'products' => OrderDetail::where('order_id',$order->id)->get(),
            'customer' => Customer::find($order->customer_id),
            'shipping' => Shipping::find($order->shipping_id),
        ]);
    }

    public function downloadOrderInvoice($id)
    {
        $order = Order::find($id);
        $pdf = PDF::loadView('admin.pdf.invoice',[
            'order'    => $order,
            'products' => OrderDetail::where('order_id',$order->id)->get(),
            'customer' => Customer::find($order->customer_id),
            'shipping' => Shipping::find($order->shipping_id),
        ]);
        return $pdf->download('invoice.pdf');
    }
    public function editOrder($id)
    {
        $order = Order::find($id);
        return view('admin.order.edit',[
            'order'    => $order,
            'products' => OrderDetail::where('order_id',$order->id)->get(),
            'customer' => Customer::find($order->customer_id),
            'shipping' => Shipping::find($order->shipping_id),
        ]);   
    }

    public function updateOrder(Request $request)
    {
        $order = Order::find($request->id);
        $order->order_status = $request->order_status;
        $order->payment_status = $request->payment_status;
        $order->save();

        if($request->order_status == 'Complete')
        {
            $payment = Payment::where('order_id', $request->id)->first();
            $payment -> payment_amount = $request->amount;
            $payment -> payment_date   = date('Y-m-d');
            $payment -> save();
        }
        

        return redirect('/manage-order')->with('message','Order Status Update Succesfully');

    }
    public function deleteOrder($id)
    {
        $order = Order::find($id);
        $order -> delete();

        return redirect('/manage-order')->with('message','Order Delete Succesfully');
    }

}






