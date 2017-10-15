<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Review;
use App\Product;
use App\Customer;
use DB;
use Session;

class ReviewController extends Controller
{
    public function addReview(Request$request){
        $review= new Review();
        $review->product_id=$request->product_id;
        $review->customer_id=$request->customer_id;
        $review->review_product=$request->review_product;
        $review->save();
        return redirect('/product-details/'.$request->product_id);

    }
    public function viewReview(){
        $customerId = Session::get('customerId');
        $reviews=DB::table('customers')
//            ->join('reviews','products.id','=','reviews.product_id')
            ->join('reviews','customers.id','=','reviews.customer_id')
            ->where('reviews.customer_id',$customerId)
            ->get();
        return view('admin.review.manage-review',['reviews'=>$reviews]);
    }
    public function unpublishedReview($id){
        $review=Review::find($id);
        $review->publication_status = 1;
        $review->save();
        return redirect ('/manage-review');
    }
}
