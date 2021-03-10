@extends('admin.master')


@section('body')

<style>
   .clearfix:after {
  content: "";
  display: table;
  clear: both;
}
.row {
    margin-left: 5%;
}

a {
  color: #5D6975;
  text-decoration: underline;
}


header {
  padding: 10px 0;
  margin-bottom: 30px;
}


#logo img {
  width: 90px;
}

h1 {
  border-top: 1px solid  #5D6975;
  border-bottom: 1px solid  #5D6975;
  color: aliceblue;
  font-size: 2.4em;
  line-height: 1.4em;
  font-weight: normal;
  text-align: center;
  margin: 0 0 20px 0;
  background: url(dimension.png);
}

#project {
  float: left;
}

#project span {
  color: #5D6975;
  text-align: right;
  width: 52px;
  margin-right: 10px;
  display: inline-block;
  font-size: 0.8em;
}

#company {
  float: right;
  text-align: right;
}

#project div,
#company div {
  white-space: nowrap;        
}

table {
  width: 100%;
  border-collapse: collapse;
  border-spacing: 0;
  margin-bottom: 20px;
}

table tr:nth-child(2n-1) td {
  background: #F5F5F5;
}

table th,
table td {
  text-align: center;
}

table th {
  padding: 5px 20px;
  color: #5D6975;
  border-bottom: 1px solid #C1CED9;
  white-space: nowrap;        
  font-weight: normal;
}

table .service,
table .desc {
  text-align: left;
}

table td {
  padding: 20px;
  text-align: right;
}

table td.service,
table td.desc {
  vertical-align: top;
}

table td.unit,
table td.qty,
table td.total {
  font-size: 1.2em;
}

table td.grand {
  border-top: 1px solid #5D6975;;
}


#notices .notice {
  color: #5D6975;
  font-size: 1.2em;
}


   </style>
<div class="row">
    <div class="col-md-12">
        <div style="width:90% " >
        <header class="clearfix">
      <h1 style=" background-color:black;">INVOICE</h1>
	 
      <div id="company" class="clearfix">
	   <h2>Billing Info </h2>
        <div> {{ $customer ->name}}</div>
        <div>{{ $customer ->address}}</div>
        <div>{{ $customer ->mobile}}</div>
        <div>{{ $customer ->email}}</div>
        <div><span> Invoice No : </span> #0{{ $order ->id}}</div>
      </div>
      <div id="project">
	  <h2>Shipping Info</h2>
        <div ><span >Name :</span> {{ $shipping ->name}}</div>
        <div><span>Address :</span> {{ $shipping ->address}}</div>
        <div><span>Mobile :</span> {{ $shipping ->mobile}}</div>
        <div><span>Email : </span> {{ $shipping ->email}}</div>
        <div><span>Order Date :</span> {{ $order ->order_date}}</div>
        
      </div>
    </header>
    <main>
      <table>
        <thead>
		
          <tr>
            <th class="service">Item</th>
            <th class="desc">Image</th>
            <th>Unit Price</th>
            <th>Quantity</th>
            <th>Total Price</th>
          </tr>
        </thead>
        <tbody>
        <?php $sum = 0; ?>
        @foreach($products as $product)
           <tr style="text-align:center">
            <td class="service">{{ $product->product_name }}</td>
            <td class="desc"><img src="{{ asset($product->product_image) }}" alt="" height="40" width="80"></td>
            <td class="unit">{{ $product->product_price }}</td>
            <td class="qty">{{ $product->product_qty }}</td>
            <td class="total">{{$total = $product->product_price * $product->product_qty}}</td>
          </tr>
          <?php $sum = $sum + $total; ?>
          @endforeach
          <tr>
            <td colspan="4">SUBTOTAL</td>
            <td class="total">{{ $sum }}</td>
          </tr>
          <tr>
            <td colspan="4">TAX 5%</td>
            
            <?php
             $vat = round((($sum * 5)/100));
            ?>
            <td class="total">{{$vat}}</td>
          </tr>
          <tr>
            <td colspan="4" class="grand total">GRAND TOTAL</td>
            <td class="grand total">{{ $sum + $vat }}</td>
          </tr>
        </tbody>
      </table>
      
    </main>
    
        </div>
    
    </div>
</div>
@endsection