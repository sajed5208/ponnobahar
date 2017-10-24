@extends('frontEnd.master')

@section('body')
    <section style="padding: 10px 0px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-3 col-xs-3">
                    <div class="row">
                        <h3 class="text-center" style="color: deeppink; margin-top: 0px;">My Home</h3>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-3 col-xs-3" style=" border-radius: 8px;">
                            <img src=" {{ asset('/front/') }}/img/homee_orig.jpg" alt="" class="img-responsive kljcate-img" style="height: 300px; width: 100%">
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-4" style="padding-top: 36px;>
                    @include('frontEnd.customer.customer-menu.menu')
                </div>
            </div>
        </div>
    </section>

         <section style="background-color: white; padding: 25px">
                <div class="container">
                    <div class="row">
                        <h3 class="text-center" style="color: deeppink; margin-top: 0px;">My Favorite Product</h3>
                        <hr style="background-color: deeppink;"/>
                    </div>
                    <div class="row">
                        @foreach($topLeftOnes->take(1) as $topLeftOne)
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 custom-hover" style="border: 1px solid deeppink; border-radius: 8px;">
                                <div class="col-sm-6 category-product-item text-left" style="">
                                    <a class="cat-display" style="color: deeppink; cursor: default">
                                        <?php if ( $topLeftOne->product_sku >=1){echo 'Available';}
                                        else if ($topLeftOne->product_sku==0){echo 'Sold Out';}?></a>
                                </div>
                                <div class="col-sm-6 category-product-item text-right" style="">
                                    <?php if($customerId = Session::get('customerId')) { ?>
                                    <a href="{{url('/add-wishlist/'.$topLeftOne->id,$topLeftOne->category_id)}}" class="cat-display" style="color: deeppink;">Add To Wishlist</a>
                                    <?php } else { ?>
                                    <a href="{{url('/no-login/'.$topLeftOne->category_id)}}" class="cat-display" style="color: deeppink;">Add To Wishlist</a>
                                    <?php }  ?>
                                </div>

                                <a href=""><img src=" {{ asset($topLeftOne->product_image) }}" alt="" style="padding: 0px; margin-top: -10px; border-radius: 5px;" class="img-responsive cate-img"></a>
                                <div class="col-sm-12" style="padding-top: 3px; height: 32px;">
                                    <p class="text-center" style="">{{ $topLeftOne->product_name}}</p>
                                    <hr style="background-color: deeppink; margin-top: -8px;"/>
                                </div>
                                <div class="col-sm-6" style="padding: 0px;">
                                    <a href="" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Add To Cart</a>
                                </div>
                                <div class="col-sm-6" style=" padding: 0px;">
                                    <a href="{{ url('/product-details/'.$topLeftOne->id) }}" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Details..</a>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                                    <p style="padding-top: 0px;">TK.{{ $topLeftOne->product_price }}</p>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px; padding: 0px;">
                                    <p style="padding-top: 0px; color: red;">{{ $topLeftOne->discount_product_amount }}% Off</p>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                                    <p style="padding-top: 0px;">TK. {{ $topLeftOne->discount_product_price }}</p>
                                </div>
                            </div>
                        @endforeach
                        @foreach($topLeftTwos->take(1) as $topLeftTwo)
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 custom-hover" style="border: 1px solid deeppink; border-radius: 8px;">
                                <div class="col-sm-6 category-product-item text-left" style="">
                                    <a class="cat-display" style="color: deeppink; cursor: default">
                                        <?php if ( $topLeftTwo->product_sku >=1){echo 'Available';}
                                        else if ($topLeftTwos->product_sku==0){echo 'Sold Out';}?></a>
                                </div>
                                <div class="col-sm-6 category-product-item text-right" style="">
                                    <?php if($customerId = Session::get('customerId')) { ?>
                                    <a href="{{url('/add-wishlist/'.$topLeftTwo->id,$topLeftTwo->category_id)}}" class="cat-display" style="color: deeppink;">Add To Wishlist</a>
                                    <?php } else { ?>
                                    <a href="{{url('/no-login/'.$topLeftTwo->category_id)}}" class="cat-display" style="color: deeppink;">Add To Wishlist</a>
                                    <?php }  ?>
                                </div>

                                <a href=""><img src=" {{ asset($topLeftTwo->product_image) }}" alt="" style="padding: 0px; margin-top: -10px; border-radius: 5px;" class="img-responsive cate-img"></a>
                                <div class="col-sm-12" style="padding-top: 3px; height: 32px;">
                                    <p class="text-center" style="">{{ $topLeftTwo->product_name}}</p>
                                    <hr style="background-color: deeppink; margin-top: -8px;"/>
                                </div>
                                <div class="col-sm-6" style="padding: 0px;">
                                    <a href="" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Add To Cart</a>
                                </div>
                                <div class="col-sm-6" style=" padding: 0px;">
                                    <a href="{{ url('/product-details/'.$topLeftTwo->id) }}" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Details..</a>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                                    <p style="padding-top: 0px;">TK.{{ $topLeftTwo->product_price }}</p>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px; padding: 0px;">
                                    <p style="padding-top: 0px; color: red;">{{ $topLeftTwo->discount_product_amount }}% Off</p>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                                    <p style="padding-top: 0px;">TK. {{ $topLeftTwo->discount_product_price }}</p>
                                </div>
                            </div>
                        @endforeach
                        @foreach($topRightOnes->take(1) as $topRightOne)
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 custom-hover" style="border: 1px solid deeppink; border-radius: 8px;">
                                <div class="col-sm-6 category-product-item text-left" style="">
                                    <a class="cat-display" style="color: deeppink; cursor: default">
                                        <?php if ( $topRightOne->product_sku >=1){echo 'Available';}
                                        else if ($topRightOne->product_sku==0){echo 'Sold Out';}?></a>
                                </div>
                                <div class="col-sm-6 category-product-item text-right" style="">
                                    <?php if($customerId = Session::get('customerId')) { ?>
                                    <a href="{{url('/add-wishlist/'.$topRightOne->id,$topLeftTwo->category_id)}}" class="cat-display" style="color: deeppink;">Add To Wishlist</a>
                                    <?php } else { ?>
                                    <a href="{{url('/no-login/'.$topRightOne->category_id)}}" class="cat-display" style="color: deeppink;">Add To Wishlist</a>
                                    <?php }  ?>
                                </div>

                                <a href=""><img src=" {{ asset($topRightOne->product_image) }}" alt="" style="padding: 0px; margin-top: -10px; border-radius: 5px;" class="img-responsive cate-img"></a>
                                <div class="col-sm-12" style="padding-top: 3px; height: 32px;">
                                    <p class="text-center" style="">{{ $topRightOne->product_name}}</p>
                                    <hr style="background-color: deeppink; margin-top: -8px;"/>
                                </div>
                                <div class="col-sm-6" style="padding: 0px;">
                                    <a href="" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Add To Cart</a>
                                </div>
                                <div class="col-sm-6" style=" padding: 0px;">
                                    <a href="{{ url('/product-details/'.$topRightOne->id) }}" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Details..</a>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                                    <p style="padding-top: 0px;">TK.{{ $topRightOne->product_price }}</p>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px; padding: 0px;">
                                    <p style="padding-top: 0px; color: red;">{{ $topRightOne->discount_product_amount }}% Off</p>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                                    <p style="padding-top: 0px;">TK. {{ $topRightOne->discount_product_price }}</p>
                                </div>
                            </div>
                        @endforeach
                        @foreach($topRightTwos->take(1) as $topRightTwo)
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 custom-hover" style="border: 1px solid deeppink; border-radius: 8px;">
                                <div class="col-sm-6 category-product-item text-left" style="">
                                    <a class="cat-display" style="color: deeppink; cursor: default">
                                        <?php if ( $topRightTwo->product_sku >=1){echo 'Available';}
                                        else if ($topRightTwo->product_sku==0){echo 'Sold Out';}?></a>
                                </div>
                                <div class="col-sm-6 category-product-item text-right" style="">
                                    <?php if($customerId = Session::get('customerId')) { ?>
                                    <a href="{{url('/add-wishlist/'.$topRightTwo->id,$topRightTwo->category_id)}}" class="cat-display" style="color: deeppink;">Add To Wishlist</a>
                                    <?php } else { ?>
                                    <a href="{{url('/no-login/'.$topRightTwo->category_id)}}" class="cat-display" style="color: deeppink;">Add To Wishlist</a>
                                    <?php }  ?>
                                </div>

                                <a href=""><img src=" {{ asset($topRightTwo->product_image) }}" alt="" style="padding: 0px; margin-top: -10px; border-radius: 5px;" class="img-responsive cate-img"></a>
                                <div class="col-sm-12" style="padding-top: 3px; height: 32px;">
                                    <p class="text-center" style="">{{ $topRightTwo->product_name}}</p>
                                    <hr style="background-color: deeppink; margin-top: -8px;"/>
                                </div>
                                <div class="col-sm-6" style="padding: 0px;">
                                    <a href="" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Add To Cart</a>
                                </div>
                                <div class="col-sm-6" style=" padding: 0px;">
                                    <a href="{{ url('/product-details/'.$topRightTwo->id) }}" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Details..</a>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                                    <p style="padding-top: 0px;">TK.{{ $topRightTwo->product_price }}</p>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px; padding: 0px;">
                                    <p style="padding-top: 0px; color: red;">{{ $topRightTwo->discount_product_amount }}% Off</p>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                                    <p style="padding-top: 0px;">TK. {{ $topRightTwo->discount_product_price }}</p>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
         </section>
@endsection