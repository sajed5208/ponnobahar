@extends('frontEnd.master')

@section('body')
    <section>
        <div class="container" style="padding-left: 0px; padding-right: 0px; margin-top: 10px;">
            <div class="row" style="margin-top: 0px;">
                <div class="col-md-8 col-md-offset-2" style="padding-right: 0px;">
                    <div class="panel panel-default" style="border-radius: 0px; border: 1px solid deeppink; margin-bottom: 10px;">
                        <div class="panel-heading" style="background-color: transparent; border-bottom: 1px solid deeppink; border-radius: 0px;">
                            <h4 class=" text-center" style="">Product Info</h4>
                        </div>
                        <div class="panel-body" style="padding-bottom: 8px;">
                            <div class="well" style="padding-bottom: 0px; background-color: lightpink">
                                <form action="{{url('/save-order')}}" method="POST" class="form-horizontal" >
                                    {{ csrf_field() }}
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Product Name <span class="text-danger"></span></label>
                                        <div class="col-md-8">
                                            @foreach($productById as $productId)
                                                <input type="hidden"  name="product_id" value="{{$productId->id}}" class="form-control">
                                            @endforeach
                                            <input type="text" readonly name="product_name" value="{{$productId->product_name}}" class="form-control" placeholder="Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Product Quantity <span class="text-danger"></span></label>
                                        <div class="col-md-8">
                                            <input type="number"  name="product_quantity" class="form-control" min="1" max="5" value="1">
                                        </div>
                                    </div>

                                    <h4 class=" text-center">Billing Info</h4>
                                    <hr style="background-color: deeppink;">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Name <span class="text-danger"></span></label>
                                        <div class="col-md-8">
                                            <input type="text"  name="billing_name" class="form-control" placeholder="Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Email <span class="text-danger"></span></label>
                                        <div class="col-md-8">
                                            <input type="email"  id="emailAddress" name="billing_email" class="form-control" onblur="customerEmailCheck(this.value); " placeholder="Email">
                                            <span id="res" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Mobile<span class="text-danger"></span></label>
                                        <div class="col-md-8">
                                            <input type="number"  name="billing_mobile" class="form-control" placeholder="Mobile Number">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-4">Address</label>
                                        <div class="col-md-8">
                                            <textarea name="billing_address" class="form-control" style="resize: vertical;" rows="5"></textarea>
                                        </div>
                                    </div>
                                        <h4 class=" text-center" style="">Sipping Info</h4>
                                        <hr style="background-color: deeppink;">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">Name <span class="text-danger"></span></label>
                                            <div class="col-md-8">
                                                <input type="text"  name="sipping_name" class="form-control" placeholder="Name">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-4">Email <span class="text-danger"></span></label>
                                            <div class="col-md-8">
                                                <input type="email"  id="emailAddress" name="sipping_email" class="form-control" onblur="customerEmailCheck(this.value); " placeholder="Email">
                                                <span id="res" class="text-danger"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-4">Mobile<span class="text-danger"></span></label>
                                            <div class="col-md-8">
                                                <input type="number"  name="sipping_mobile" class="form-control" placeholder="Mobile Number">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-4">Address</label>
                                            <div class="col-md-8">
                                                <textarea name="sipping_address" class="form-control" style="resize: vertical;" rows="5"></textarea>
                                            </div>
                                        </div>
                                        <h4 class=" text-center" style="">Payment Info</h4>
                                        <hr style="background-color: deeppink;">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">Payment Method <span class="text-danger"></span></label>
                                            <div class="col-md-8">
                                                <input type="radio" name="payment_method" value="Cash"> Cash<br>
                                                <input type="radio" name="payment_method" value="bKash"> bKash<br>
                                                <input type="radio" name="payment_method" value="Roket"> Roket<br>
                                                <input type="radio" name="payment_method" value="Visa"> Visa Card<br>
                                                <input type="radio" name="payment_method" value="Cash"> Payza<br>
                                                <input type="radio" name="payment_method" value="Payza"> Credit Card<br>
                                                <input type="radio" name="payment_method" value="American Express"> American Express<br>
                                            </div>
                                        </div>
                                    <div class="form-group">
                                        <input type="submit" name="btn" class="btn btn-default btn-block" style="background-color: deeppink; height: 40px; border-radius: 0px; color: white; font-size: 18px;" value="Submit Info">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection