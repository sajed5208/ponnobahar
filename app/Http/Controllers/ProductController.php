<?php

namespace App\Http\Controllers;

use App\ProductSubImage;
use App\SubCategory;
use Illuminate\Http\Request;
use App\Category;
use App\Brand;
use App\Product;
use App\SizeWidth;
use DB;

class ProductController extends Controller
{
    public function addProduct(){
        $categories=Category::where('publication_status',1)->get();
        $subCategories=SubCategory::where('publication_status',1)->get();
        $brands=Brand::where('publication_status',1)->get();
        $sizeWidths=SizeWidth::where('publication_status',1)->get();
//        return $sizeWidths;
        return view('/admin.product.add-product',[
            'categories'=>$categories,
            'subCategories'=>$subCategories,
            'brands'=>$brands,
            'sizeWidths'=>$sizeWidths
        ]);
    }


    public function saveProductBasicInfo($request) {
        $product =new Product();
        $product->category_id = $request->category_id;
        $product->sub_category_id = $request->sub_category_id;
        $product->brand_id = $request->brand_id;
        $product->product_name = $request->product_name;
        $product->product_code = $request->product_code;
        $product->product_size_weight = $request->product_size_weight;
        $product->product_color = $request->product_color;
        $product->product_sku = $request->product_sku;
        $product->product_price = $request->product_price;
        $product->discount_product_amount=$request->discount_product_amount;
        $product->discount_product_price=$request->discount_product_price;
        $product->top_left_one = $request->top_left_one;
        $product->top_left_two = $request->top_left_two;
        $product->top_right_one = $request->top_right_one;
        $product->top_right_two = $request->top_right_two;
        $product->carousel_slider = $request->carousel_slider;
        $product->top_product_status = $request->top_product_status;
        $product->product_short_description = $request->product_short_description;
        $product->product_long_description = $request->product_long_description;
        $product->product_image = $this->saveProductMainImage($request);
        $product->publication_status=$request->publication_status;
        $product->save();
        $productId = $product->id;
        return $productId;
    }
    public function saveProductMainImage($request) {
        $productImage=$request->file('product_image');
        $productImageName=$productImage->getClientOriginalName();
        $uploadPath='product-images/';
        $imageUrl=$uploadPath.$productImageName;
        $productImage->move($uploadPath,$productImageName);
        return $imageUrl;
    }
    private function uploadProductImage($request, $product_id) {
        if($files=$request->file('userfile')){
            foreach($files as $file){
                $name=$file->getClientOriginalName();
                $uploadPath='product-sub-images/';
                $imageUrl=$uploadPath.$name;
                $file->move($uploadPath,$name);
                $productSubImage = new ProductSubImage();
                $productSubImage->product_id = $product_id;
                $productSubImage->product_sub_image = $imageUrl;
                $productSubImage->save();
            }
        }
    }
    public function saveProductInfo(Request $request) {
        $productId = $this->saveProductBasicInfo($request);
        $this->uploadProductImage($request, $productId);
        return redirect('/add-product')->with('message','Product Info Save Successfully');
    }
    public function editProduct($id){
        $categories=Category::where('publication_status',1)->get();
        $subCategories=SubCategory::where('publication_status',1)->get();
        $brands=Brand::where('publication_status',1)->get();
        $productById=Product::find($id);
        return view('admin.product.edit-product',[
            'product'=>$productById,
            'categories'=>$categories,
            'subCategories'=>$subCategories,
            'brands'=>$brands
        ]);
    }
    public function updateProduct(Request$request){
        $productImage=$request->file('product_image');
        if ($productImage){
            return 'hey';
        }else{

            $this->updateWithOutImage($request);
            return redirect('/manage-product')->with('message','Product Info Update Successful');
        }
    }
    public function updateWithOutImage($request){
        $productId=$request->productId;
        $product =Product::find($productId);
        $product->category_id = $request->category_id;
        $product->sub_category_id = $request->sub_category_id;
        $product->brand_id = $request->brand_id;
        $product->product_name = $request->product_name;
        $product->product_code = $request->product_code;
        $product->product_size_weight = $request->product_size_weight;
        $product->product_color = $request->product_color;
        $product->product_sku = $request->product_sku;
        $product->product_price = $request->product_price;
        $product->discount_product_amount=$request->discount_product_amount;
        $product->discount_product_price=$request->discount_product_price;
        $product->top_left_one = $request->top_left_one;
        $product->top_left_two = $request->top_left_two;
        $product->top_right_one = $request->top_right_one;
        $product->top_right_two = $request->top_right_two;
        $product->carousel_slider = $request->carousel_slider;
        $product->top_product_status = $request->top_product_status;
        $product->product_short_description = $request->product_short_description;
        $product->product_long_description = $request->product_long_description;
        $product->product_image = $this->saveProductMainImage($request);
        $product->publication_status=$request->publication_status;
        $product->save();
    }

    public function manageProduct() {
        $allPublishedProducts = DB::table('products')
            ->join('categories', 'products.category_id', '=', 'categories.id')
            ->join('sub_categories', 'products.sub_category_id', '=', 'sub_categories.id')
            ->select('products.id', 'products.product_name','products.product_price', 'products.product_sku', 'products.publication_status', 'categories.category_name', 'sub_categories.sub_category_name')
            ->where('products.publication_status', 1)
            ->orderBy('products.id', 'desc')
            ->get();
        return view('admin.product.manage-product', ['allPublishedProducts'=>$allPublishedProducts]);
    }

    public function viewProductInfo($id) {
        $productById = DB::table('products')
            ->join('categories', 'products.category_id', '=', 'categories.id')
            ->join('sub_categories', 'products.sub_category_id', '=', 'sub_categories.id')
            ->join('brands', 'products.brand_id', '=', 'brands.id')
            ->select('products.*', 'categories.category_name', 'sub_categories.sub_category_name', 'brands.brand_name')
            ->where('products.id', $id)
            ->first();
        $productSubImagesById = DB::table('products')
            ->join('product_sub_images', 'products.id', '=', 'product_sub_images.product_id')
            ->select('products.id', 'product_sub_images.product_sub_image')
            ->where('products.id', $id)
            ->get();
        return view('admin.product.view-product', [
            'productById'=>$productById,
            'productSubImagesById'=>$productSubImagesById
        ]);
    }

    public function selectSubCategoryByCategoryId($id) {
        $subCategoriesByCategoryId= SubCategory::where('category_id', $id)->get();
        echo view('admin.product.sub-category-content', ['subCategoriesByCategoryId'=>$subCategoriesByCategoryId]);
    }
}
