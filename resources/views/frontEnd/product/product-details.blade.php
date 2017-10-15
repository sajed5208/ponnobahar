@extends('frontEnd.master')

@section('body')
    <h2 class="text-center" style="color: red;">{{Session::get('message')}}</h2>
    <section class="sb-prod-det-img" style="background-color: white;">
        <div class="container" style="padding: 0px;">
            <div class="row">
                <div class="col-md-6">
                    <div class="grid images_3_of_2">
                        <ul id="etalage">
                            @foreach($productImages as $productImage)
                            <li>
                                <a href="optionallink.html">
                                    <img class="etalage_thumb_image img-responsive" src="{{ asset($productImage->product_sub_image) }}" alt="Image" />
                                    <img class="etalage_source_image img-responsive" src="{{ asset($productImage->product_sub_image) }}" title="" alt="Image" />
                                </a>
                            </li>
                            @endforeach
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="sb-prod-info">
                        <h4><span style="color: deeppink;">Product Code: </span>{{ $productById->product_code }}</h4>
                        <h4><span style="color: deeppink;">Product Name: </span>{{ $productById->product_name }}</h4>
                        <h4><span style="color: deeppink;">Product Price: </span>TK. {{ $productById->product_price }}</h4>
                        <h4><span style="color: deeppink;">Product Discount Amount: </span>{{ $productById->discount_product_amount }}% off</h4>
                        <h4><span style="color: deeppink;">Product Discount Price: </span>TK. {{ $productById->discount_product_price }}</h4>
                        <h4 style="color: deeppink;">Product Description : </h4>
                        <p class="text-justify">
                            {{ $productById->product_short_description }}
                        </p>
                        <div>
                            <form action="{{ url('/add-to-cart') }}" method="POST">
                                {{ csrf_field() }}
                                <div class="form-group">
                                    <label>Qantity: </label>
                                    <input type="number"  required name="product_quantity" min="1" max="200" value="1">   <a href="#reviews"><h4 class="pull-right">Be the first to review this product</h4></a>
                                    <input type="hidden"  required name="product_id" value="{{ $productById->id }}">
                                </div>
                                <button type="submit" style="background-color: deeppink; margin-top: -10px; margin-left: 0px; " class="pull-right"><i class="fa fa-shopping-cart"></i> Add To Cart </button>
                                <li style="list-style: none; " ><a href="{{url('/order_now/'.$productById->id)}}" style=" background: deeppink; color: white; padding: 10px;">Order Now</a></li>
                            </form>
                        </div>
                        <div class="sb-prod-cont">
                            <h2> Order By Phone Please Dial </h2>
                            <h2> 01712 95 13 24 </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section style="padding-top: 20px; background-color: white;" id="reviews">
        <div class="container" style="padding: 0px;">
            <div class="row">
                <div class="col-sm-12">
                    <div style="border: 1px solid deeppink;">
                        <ul class="nav nav-pills nav-justified">
                            <li class="active" style="border-right: 1px solid pink;"><a data-toggle="pill" href="#review">Review</a></li>
                            <li style="border-right: 1px solid pink;"><a data-toggle="pill" href="#conditions">Conditions</a></li>
                            <li style="border-right: 1px solid pink;"><a data-toggle="pill" href="#purahage">Purchage Steps</a></li>
                            <li style="border-right: 1px solid pink;"><a data-toggle="pill" href="#return">Return Policy</a></li>
                            <li style="border-right: 1px solid pink;"><a data-toggle="pill" href="#size">Size Guide</a></li>
                        </ul>
                        <div class="tab-content" style="border-top: 1px solid deeppink; padding: 10px;">
                            <div id="review" class="tab-pane fade in active">
                                @foreach($reviews as $review)
                                <div class="media">
                                    <div style="float: left;" class="media-left">
                                        <img src="{{asset($review->customer_image)}}" class="media-object" style="width:60px">
                                    </div>
                                    <div style="float: left; padding-bottom: 20px; margin-left: 10px;" class="media-body">
                                        <h4 class="media-heading">{{$review->first_name.' '.$review->last_name}}</h4>
                                        <p>{{$review->review_product}}</p>
                                    </div>
                                </div>
                                @endforeach
                                @if($customerId = Session::get('customerId'))
                                    <form action="{{url('/add-review')}}" method="POST">
                                        {{ csrf_field() }}
                                        <h4>Review This Product:</h4>
                                        <input type="hidden"  required name="product_id" value="{{ $productById->id }}">
                                        <input type="hidden"  required name="customer_id" value="{{ $customerId }}">
                                        <textarea name="review_product" class="form-control"></textarea>
                                        <input type="submit" name="btn" value="Review">
                                    </form>
                                @endif
                            </div>
                            <div id="conditions" class="tab-pane fade">
                                <h3>Conditions Content goes here. Conditions Content goes here.</h3>
                                <h3>Conditions Content goes here. Conditions Content goes here.</h3>
                                <p>Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content.</p>
                                <p>Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content.</p>
                            </div>
                            <div id="purahage" class="tab-pane fade">
                                <h3>Purchage content goes here. Purchage content goes here.</h3>
                                <h3>Purchage content goes here. Purchage content goes here.</h3>
                                <p>Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content.</p>
                                <p>Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content.</p>
                            </div>
                            <div id="return" class="tab-pane fade">
                                <h3>Return content goes here. Return content goes here.</h3>
                                <h3>Return content goes here. Return content goes here.</h3>
                                <p>Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content.</p>
                                <p>Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content.</p>
                            </div>
                            <div id="size" class="tab-pane fade">
                                <h3>Size content goes here. Size content goes here.</h3>
                                <h3>Size content goes here. Size content goes here.</h3>
                                <p>Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content.</p>
                                <p>Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content. Some content.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section style="background-color: white;">
        <div class="container">
            <div class="row">
                <h3 class="text-center" style="color: deeppink;">Releted Product</h3>
                <hr style="background-color: deeppink;"/>
            </div>
            <div class="row">
                @foreach($categoryProducts as $categoryProduct)
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 custom-hover" style="border: 1px solid deeppink; border-radius: 8px;">
                    <div class="col-sm-6 category-product-item text-left" style="">
                        <a class="cat-display" style="color: deeppink; cursor: default">
                            <?php if ($categoryProduct->product_sku>=1){echo 'Available';}
                            else if ($categoryProduct->product_sku==0){echo 'Sold Out';}?></a>
                    </div>
                    <div class="col-sm-6 category-product-item text-right" style="">
                        <a href="" class="cat-display" style="color: deeppink;">Add To Wishlist</a>
                    </div>

                    <a href="{{ url('/product-details/'.$categoryProduct->id) }}"><img src="{{ asset($categoryProduct->product_image) }}" alt="" style="padding: 0px; margin-top: -10px; border-radius: 5px;" class="img-responsive cate-img"></a>
                    <div class="col-sm-12" style="padding-top: 3px; height: 32px;">
                        <p class="text-center" style="">{{ $categoryProduct->product_name }}</p>
                        <hr style="background-color: deeppink; margin-top: -8px;"/>
                    </div>
                    <div class="col-sm-6" style="padding: 0px;">
                        <a href="" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Add To Cart</a>
                    </div>
                    <div class="col-sm-6" style=" padding: 0px;">
                        <a href="{{ url('/product-details/'.$categoryProduct->id) }}" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Details..</a>
                    </div>
                    <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                        <p style="padding-top: 0px;">TK. {{ $categoryProduct->product_price }}</p>
                    </div>
                    <div class="col-sm-4 text-center" style="margin-top: 2px; padding: 0px;">
                        <p style="padding-top: 0px; color: red;">{{ $categoryProduct->discount_product_amount }}% Off</p>
                    </div>
                    <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                        <p style="padding-top: 0px;">TK.{{ $categoryProduct->discount_product_price }}</p>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>

@endsection