@extends('frontEnd.master')

@section('body')

    <section style="padding: 10px 0px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-4">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-default text-center" style="border: 1px solid deeppink;">
                                <div class="panel-heading panel-title" style="background-color: deeppink; color: white;">
                                    Search By Price
                                </div>
                                <div class="panel-body list-group">
                                    <a class="list-group-item" href="{{ url('/category-product/'.'300') }}">0 - 300TK</a>
                                    <a class="list-group-item" href="{{ url('/category-product/'.'1000') }}">301 - 1000TK</a>
                                    <a class="list-group-item" href="{{ url('/category-product/'.'3000') }}">1001 - 3000TK</a>
                                    <a class="list-group-item" href="{{ url('/category-product/'.'5000') }}">3001 - 5000TK</a>
                                    <a class="list-group-item" href="{{ url('/category-product/'.'10000') }}">5001 - 10,00TK</a>
                                    <a class="list-group-item" href="{{ url('/category-product/'.'20000') }}">10, 001 - 20, 000TK</a>
                                    <a class="list-group-item" href="{{ url('/category-product/'.'100000') }}">20, 001 - 1, 00, 000TK</a>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-default text-center" style="border: 1px solid deeppink;">
                                <div class="panel-heading panel-title" style="background-color: deeppink; color: white;">
                                    Search By Color
                                </div>
                                <div class="panel-body list-group">
                                    <a class="list-group-item" href="{{ url('/color-product/'.'Black') }}"> Black </a>
                                    <a class="list-group-item" href="{{ url('/color-product/'.'White') }}"> White </a>
                                    <a class="list-group-item" href="{{ url('/color-product/'.'Orange') }}"> Orange </a>
                                    <a class="list-group-item" href="{{ url('/color-product/'.'Pink') }}"> Pink </a>
                                    <a class="list-group-item" href="{{ url('/color-product/'.'Golden') }}"> Golden </a>
                                    <a class="list-group-item" href="{{ url('/color-product/'.'Yellow') }}"> Yellow </a>
                                    <a class="list-group-item" href="{{ url('/color-product/'.'Blue') }}"> Blue </a>
                                    <a class="list-group-item" href="{{ url('/color-product/'.'Perple') }}"> Perple </a>
                                    <a class="list-group-item" href="{{ url('/color-product/'.'Silver') }}"> Silver </a>
                                    <a class="list-group-item" href="{{ url('/color-product/'.'Red') }}"> Red </a>
                                    <a class="list-group-item" href="{{ url('/color-product/'.'Green') }}"> Green </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-default text-center" style="border: 1px solid deeppink;">
                                <div class="panel-heading panel-title" style="background-color: deeppink; color: white;">
                                    Search By Size
                                </div>
                                <div class="panel-body list-group">
                                    <a class="list-group-item" href=""> Small </a>
                                    <a class="list-group-item" href=""> Medium </a>
                                    <a class="list-group-item" href=""> Large </a>
                                    <a class="list-group-item" href=""> XL </a>
                                    <a class="list-group-item" href=""> XXL </a>
                                    <a class="list-group-item" href=""> Yellow </a>
                                    <a class="list-group-item" href=""> 40 </a>
                                    <a class="list-group-item" href=""> 42 </a>
                                    <a class="list-group-item" href=""> 45 </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-default text-center" style="border: 1px solid deeppink;">
                                <div class="panel-heading panel-title" style="background-color: deeppink; color: white;">
                                    Search By Brand
                                </div>
                                <div class="panel-body list-group">
                                    <a class="list-group-item" href=""> A </a>
                                    <a class="list-group-item" href=""> B </a>
                                    <a class="list-group-item" href=""> C </a>
                                    <a class="list-group-item" href=""> D </a>
                                    <a class="list-group-item" href=""> E </a>
                                    <a class="list-group-item" href=""> F </a>
                                    <a class="list-group-item" href=""> G </a>
                                    <a class="list-group-item" href=""> H </a>
                                    <a class="list-group-item" href=""> I </a>
                                    <a class="list-group-item" href=""> J </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-8 col-xs-8">
                    <div class="row">
                        @foreach($productsByFilter as $productByFilter)
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 custom-hover" style="border: 1px solid deeppink; border-radius: 8px;">
                                <div class="col-sm-6 category-product-item text-left" style="">
                                    <a class="cat-display" style="color: deeppink; cursor: default">
                                        <?php if ($productByFilter->product_sku>=1){echo 'Available';}
                                        else if ($productByFilter->product_sku==0){echo 'Sold Out';}?></a>
                                </div>
                                <div class="col-sm-6 category-product-item text-right" style="">
                                    <a href="" class="cat-display" style="color: deeppink;">Add To Wishlist</a>
                                </div>

                                <a href="{{ url('/product-details/'.$productByFilter->id) }}"><img src="{{ asset($productByFilter->product_image) }}" alt="" style="padding: 0px; margin-top: -10px; border-radius: 5px;" class="img-responsive cate-img"></a>
                                <div class="col-sm-12" style="padding-top: 3px; height: 32px;">
                                    <p class="text-center" style="">{{ $productByFilter->product_name }}</p>
                                    <hr style="background-color: deeppink; margin-top: -8px;"/>
                                </div>
                                <div class="col-sm-6" style="padding: 0px;">
                                    <a href="" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Add To Cart</a>
                                </div>
                                <div class="col-sm-6" style=" padding: 0px;">
                                    <a href="{{ url('/product-details/'.$productByFilter->id) }}" class="btn btn-default btn-block cat-display" style="border-radius: 0px; background-color: deeppink; color: white;">Details..</a>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                                    <p style="padding-top: 0px;">TK. {{ $productByFilter->product_price }}</p>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px; padding: 0px;">
                                    <p style="padding-top: 0px; color: red;">{{ $productByFilter->discount_product_amount }}% Off</p>
                                </div>
                                <div class="col-sm-4 text-center" style="margin-top: 2px;  padding: 0px;">
                                    <p style="padding-top: 0px;">TK. {{ $productByFilter->discount_product_price }}</p>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection