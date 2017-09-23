@extends('admin.master')
@section('title')
    Add Product Form
@endsection
@section('body')
    <section class="content-header">
        <h1>
            Create Product Form
            <small>Preview</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{ url('/home') }}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{ url('/manage-product') }}">Manage Product</a></li>
            <li class="active">Add Product</li>
        </ol>
    </section>
    <!-- Horizontal Form -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        {{--<h3 class="box-title">Product Form</h3>--}}
                    </div><!-- /.box-header -->
                    <h4 class="text-center">{{Session::get('message')}}</h4>
                    <!-- form start -->
                    <form class="form-horizontal" action="{{ url('/new-product') }}" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="box-body">
                            <div class="row">
                                <div class="col-sm-12 text-center"><h4>Product Basic Status</h4> <hr/></div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-4 control-label">Category Name</label>
                                        <div class="col-sm-8">
                                            <select name="category_id" class="form-control" onchange="selectSubCategory(this.value); ">
                                                <option value="">--- Select Category Name ---</option>
                                                @foreach($categories as $category)
                                                    <option value="{{$category->id}}">{{$category->category_name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group" id="subRes">
                                        <label for="inputEmail3" class="col-sm-4 control-label">Sub Category Name</label>
                                        <div class="col-sm-8">
                                            <select name="sub_category_id" class="form-control">
                                                @foreach($subCategories as $subCategory)
                                                    <option value="{{$subCategory->id}}">{{$subCategory->sub_category_name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-4 control-label">Brand Name</label>
                                        <div class="col-sm-8">
                                            <select name="brand_id" class="form-control">
                                                @foreach($brands as $brand)
                                                    <option value="{{$brand->id}}">{{$brand->brand_name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-4 control-label">Product Size</label>
                                        <div class="col-sm-8">
                                            <select name="product_size" class="form-control">
                                                <option value="Small">Small</option>
                                                <option value="Medium">Medium</option>
                                                <option value="Large">Large</option>
                                                <option value="XL">XL</option>
                                                <option value="XXL">XXL</option>
                                                <option value="40">40</option>
                                                <option value="42">42</option>
                                                <option value="45">45</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="inputEmail3"  class="col-sm-3 control-label">Product Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="product_name" class="form-control" id="inputEmail3" placeholder="Product Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3"  class="col-sm-3 control-label">Product Code</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="product_code" class="form-control" id="inputEmail3" placeholder="Product Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3"  class="col-sm-3 control-label">Product Sku</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="product_sku" class="form-control" id="inputEmail3" placeholder="Product Sku">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3"  class="col-sm-3 control-label">Product Price</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="product_price" class="form-control" id="inputEmail3" placeholder="Product price">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3"  class="col-sm-3 control-label">Product Discount Amount</label>
                                        <div class="col-sm-9">
                                            <input type="number" name="discount_product_amount" class="form-control" id="inputEmail3" placeholder="Product Discount Amount">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3"  class="col-sm-3 control-label">Product Discount Price</label>
                                        <div class="col-sm-9">
                                            <input type="number" name="discount_product_price" class="form-control" id="inputEmail3" placeholder="Product Discount Price">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Product Color</label>
                                <div class="col-sm-10">
                                    <select name="product_color" class="form-control">
                                        <option value="Black">Black</option>
                                        <option value="White">White</option>
                                        <option value="Orange">Orange</option>
                                        <option value="Pink">Pink</option>
                                        <option value="Golden">Golden</option>
                                        <option value="Yellow">Yellow</option>
                                        <option value="Blue">Blue</option>
                                        <option value="Purple">Purple</option>
                                        <option value="Silver">Silver</option>
                                        <option value="Red">Red</option>
                                        <option value="Green">Green</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 text-center"><h4>Top Left Right Product Status</h4> <hr/></div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-4 control-label">Top Left One</label>
                                        <div class="col-sm-8">
                                            <select name="top_left_one" class="form-control">
                                                <option value="0">Not Selected</option>
                                                <option value="1">Selected</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-4 control-label">Top Left Two</label>
                                        <div class="col-sm-8">
                                            <select name="top_left_two" class="form-control">
                                                <option value="0">Not Selected</option>
                                                <option value="1">Selected</option>

                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-4 control-label">Top Right One</label>
                                        <div class="col-sm-8">
                                            <select name="top_right_one" class="form-control">
                                                <option value="0">Not Selected</option>
                                                <option value="1">Selected</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-4 control-label">Top Right Two</label>
                                        <div class="col-sm-8">
                                            <select name="top_right_two" class="form-control">
                                                <option value="0">Not Selected</option>
                                                <option value="1">Selected</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr/>
                            <h4 class="text-center">Others Info</h4>
                            <hr/>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Front Carousel Status</label>
                                <div class="col-sm-10">
                                    <select name="carousel_slider" class="form-control">
                                        <option>--- Selected Front Product Carousel Status ---</option>
                                        <option value="1">Selected For Front Carousel</option>
                                        <option value="0">Not Selected For Front Carousel</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Top Product List Status</label>
                                <div class="col-sm-10">
                                    <select name="top_product_status" class="form-control">
                                        <option>--- Selected Front Page Top Product List Status ---</option>
                                        <option value="1">Selected For Front Page Top Product List</option>
                                        <option value="0">Not Selected Front Page Top Product List</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Product Short Description</label>
                                <div class="col-sm-10">
                                    <textarea name="product_short_description" rows="3" class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Product Long Description</label>
                                <div class="col-sm-10">
                                    <textarea id="editor1" name="product_long_description" rows="10" cols="80"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Product Main Image</label>
                                <div class="col-sm-10">
                                    <input type="file" name="product_image" accept="image/*">

                                    <span class="text-danger"> Image size should be 300*300 </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Product Sub Image</label>
                                <div class="col-sm-10">
                                    <input type="file" name="userfile[]" multiple="" accept="image/*">
                                    <span class="text-danger"> Image size should be 300*300 </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Publication Status</label>
                                <div class="col-sm-10">
                                    <select name="publication_status" class="form-control">
                                        <option value="1">Published</option>
                                        <option value="0">Unpublished</option>
                                    </select>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="reset" class="btn btn-default">Reset</button>
                                <button type="submit" name="btn" class="btn btn-info pull-right">Create Product Info</button>
                            </div><!-- /.box-footer -->
                       </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <script>
        CKEDITOR.replace('editor1');

        function selectSubCategory(category_id) {
            var xmlHttp = new XMLHttpRequest();
            var serverPage='/ponnobahar/public/select-sub-category/'+category_id;
            xmlHttp.open("GET", serverPage);
            xmlHttp.onreadystatechange = function() {
                if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                    document.getElementById('subRes').innerHTML = xmlHttp.responseText;
                }
            }
            xmlHttp.send(null);
        }
    </script>
@endsection