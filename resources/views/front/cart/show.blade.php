@extends('front.master')

@section('body')

<div class="men">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
               <div class="panel panel-body">
               <h2 class="text-center" style="margin-bottom:40px">{{ Session::get('message') }}</h2>
               <h2 class="text-center" style="margin-bottom:40px">All Cart product</h2>
               <table class="table table-bordered table-hover" style="border: 1px solid lighgray;";>
                <tr>
                    <th>SL NO</th>
                    <th>Product Name</th>
                    <th>Product Image</th>
                    <th>Product Price</th>
                    <th>Product Quentity</th>
                    <th>Total Price</th>
                    <th>Action</th>
                </tr>
                <?php $sum = 0; ?>
                @foreach($cartProducts as $key => $cartProduct)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $cartProduct->name }}</td>
                    <td><img src="{{ asset($cartProduct->options->image) }}" alt="" height="60" width="100"></td>
                    <td>{{ $cartProduct->price }}</td>
                    <td>
                        <form action="{{ route('update-cart-product') }}" method="post">
                             @csrf
                             <input type="number" value="{{ $cartProduct->qty }}" name="qty" min="1"/>
                             <input type="hidden" value="{{ $cartProduct->rowId }}" name="rowId">
                             <input type="submit" value="Update"/>
                        </form>
                    </td>
                    <td>{{ number_format(($cartProduct->qty * $cartProduct->price)) }}</td>
                    <td>
                        <a href="{{ route('remove-cart-product',['rowId' => $cartProduct->rowId]) }}" class="btn btn-danger">Remove</a>
                    </td>
                </tr>
                <?php 
                    $sum = $sum + ($cartProduct->qty * $cartProduct->price)
                ?>
                @endforeach
               </table >
               <hr style="border: 1px solid gray;"> 
               <table class="table table-bordered" style="width:40%; margin-left:60%">
                    <tr>
                        <td>Sub Total</td>
                        <td>{{number_format(round($sum)) }}</td>
                    </tr>
                    <tr>
                        <td>Vat/Tax</td>
                        <td>
                            <?php
                            $vat = round((($sum * 5)/100));
                            echo $vat;
                            ?>
                        </td>
                    </tr>
                    <tr>
                        <td>Shipping Cost</td>
                        <td>00</td>
                    </tr>
                    <tr>
                        <td>Grand Total</td>
                        <td>
                            {{ $grandTotal = $sum + $vat }}
                            <?php
                                Session::put('grand_total', $grandTotal);
                            ?>
                        </td>
                    </tr>
               </table>
               <div style="margin: 50px;">
                    <a href="{{ route ('/') }}" class="btn btn-success">Continue Shopping</a>
                    @if(Session::get('customer_id'))
                    <a href="{{ route ('show-shipping') }}" style="margin-left:70%;" class="btn btn-success bg-green pull-right">Checkout</a>
                    @else
                    <a href="{{ route ('checkout') }}" style="margin-left:70%;" class="btn btn-success" >Checkout</a>
                    @endif
               </div>
               </div>
            </div>
        </div>
    </div>
</div> 

@endsection