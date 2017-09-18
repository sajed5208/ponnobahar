@extends('frontEnd.master')

@section('body')
<section class="slider-section" style="background-color: white;">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3" style="padding-right:.5%; padding-left: 0px;">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="slider-add">
                            <a href=""><img src="{{ asset('/front/') }}/img/stil-image.jpg" alt="" style="height: 100%; width: 100%; border-radius: 5px;" /></a>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="row" style="margin-top: -13px;">
                    <div class="col-sm-12">
                        <div class="slider-add">
                            <a href=""><img src="{{ asset('/front/') }}/img/stil-image.jpg" alt="" style="height: 100%; width: 100%; border-radius: 5px;" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px; padding-right: 0px;">
                <div class="slider-slider">
                    <div id="slider1_container" style="position: relative; width: 720px; height: 600px; overflow: hidden; border-radius: 5px;">
                        <!-- Loading Screen -->
                        <!-- Slides Container -->
                        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 720px; height: 670px; border-radius: 5px; overflow: hidden;">
                            @foreach($publishedSliders as $publishedSlider)
                            <div>
                                <a href="">
                                    <img u="image" src="{{ asset($publishedSlider->slider_main_image) }}" />
                                    <img u="thumb" src="{{ asset($publishedSlider->slider_sub_image) }}" />
                                </a>
                            </div>
                        @endforeach
                        </div>
                        <!-- thumbnail navigator container -->
                        <div u="thumbnavigator" class="jssort07" style="width: 720px; height: 100px; left: 0px; bottom: 0px;">
                            <!-- Thumbnail Item Skin Begin -->
                            <div u="slides" style="cursor: default;">
                                <div u="prototype" class="p">
                                    <div u="thumbnailtemplate" class="i"></div>
                                    <div class="o"></div>
                                </div>
                            </div>
                            <!-- Arrow Left -->
                            <span u="arrowleft" class="jssora11l" style="top: 123px; left: 8px;"></span>
                            <!-- Arrow Right -->
                            <span u="arrowright" class="jssora11r" style="top: 123px; right: 8px;"></span>
                            <!--#endregion Arrow Navigator Skin End -->
                        </div>
                        <!-- Trigger -->
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3" style="padding-right: 0px; padding-left: 7px;">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="slider-add">
                            <a href=""><img src="{{ asset('/front/') }}/img/stil-image.jpg" alt="" style="height: 100%; width: 100%; border-radius: 5px;" /></a>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="col-sm-12" style="margin-top: -13px;">
                        <div class="slider-add">
                            <a href=""><img src="{{ asset('/front/') }}/img/stil-image.jpg" alt="" style="height: 100%; width: 100%; border-radius: 5px;" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="pro-carousel" style="background-color: white;">
    <div class="container">
        <div class="row">
            <div class="col-sm-12" style="margin-top: -20px;">
                <div class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_sep_color_grey header-underline vc_separator-has-text" style="margin-bottom: 0px;">
                    <span class="vc_sep_holder vc_sep_holder_l"><span class="vc_sep_line" style="border: 1px solid deeppink; margin-right: 5px;"></span></span><h3 style="font-size: 20px; color: deeppink;"> RECENT PRODUCT </h3><span class="vc_sep_holder vc_sep_holder_r"><span class="vc_sep_line" style="border: 1px solid deeppink; margin-left: 5px;"></span></span>
                </div>
            </div>
        </div>
        <div class="row">
            <div>
                <div class="owl-carousel owl-theme">
                    @foreach($carouselSliderProducts as $carouselSliderProduct)
                    <div class="item">
                        <img src="{{ asset($carouselSliderProduct->product_image) }}" alt="" style="height: 240px; border-radius: 5px;">
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
<section style="padding: 20px; background-color: white;">
    <div class="container" style="padding: 0px;">
        <div class="row">
            <div class="col-sm-12" style="margin-top: -35px;">
                <div class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_sep_color_grey header-underline vc_separator-has-text" style="margin-bottom: 0px;">
                    <span class="vc_sep_holder vc_sep_holder_l"><span class="vc_sep_line" style="border: 1px solid deeppink; margin-right: 5px; margin-left: 10px;"></span></span><h3 style="font-size: 20px; color: deeppink;"> OFFERED PRODUCT </h3><span class="vc_sep_holder vc_sep_holder_r"><span class="vc_sep_line" style="border: 1px solid deeppink; margin-left: 5px; margin-right: 10px;"></span></span>
                </div>
            </div>
        </div>
        <div class="row">
            @foreach($firstTopProducts as $firstTopProduct)
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6" style="padding-right: 0px; padding-left: 6px;">
                <a href="{{ url('/category/'.$firstTopProduct->category_id) }}"><img src="{{ asset($firstTopProduct->product_image) }}" alt="" style="height: 300px; border-radius: 5px;"/></a>
            </div>
            @endforeach
        </div>
        <br/>
        <div class="row" style="margin-top: -14px;">
            @foreach($secondTopProducts as $secondTopProduct)
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6" style="padding-right: 0px; padding-left: 6px;">
                <a href="{{ url('/category/'.$secondTopProduct->category_id) }}"><img src="{{ asset($secondTopProduct->product_image) }}" alt="" style="height: 300px; border-radius: 5px;"/></a>
            </div>
            @endforeach
        </div>
        <br/>
        <div class="row" style="margin-top: -14px;">
            @foreach($thirdTopProducts as $thirdTopProduct)
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6" style="padding-right: 0px; padding-left: 6px;">
                <a href="{{ url('/category/'.$thirdTopProduct->category_id) }}"><img src="{{ asset($thirdTopProduct->product_image) }}" alt="" style="height: 300px; border-radius: 5px;"/></a>
            </div>
            @endforeach
        </div>
        <br/>
    </div>
</section>

@endsection