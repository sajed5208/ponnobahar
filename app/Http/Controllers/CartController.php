<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use Cart;

class CartController extends Controller
{
    public function addToCart(Request $request) {
        $productId=$request->product_id;
        $productById=Product::where('id', $productId)->first();
        Cart::add([
            'id' => $productId,
            'name' => $productById->product_name,
            'price' => $productById->product_price,
            'qty' => $request->product_quantity,
            'options' => [
                'code' => $productById->product_code
            ]
        ]);
        return redirect('/show-cart');
    }
    public function showCart() {
        $cartProducts=Cart::content();
        $recentProducts = Product::orderBy('id', 'desc')->take(20)->get();
        return view('frontEnd.cart.cart', [
            'cartProducts'=>$cartProducts,
            'recentProducts' => $recentProducts
        ]);
    }
    public function updateCartProduct(Request $request, $id) {
        Cart::update($id, $request->qty);
        return redirect('/show-cart')->with('meassage', 'Cart Product info delete successfully');
    }
    public function deleteCartProduct($id){
        Cart::remove($id);
        return redirect('/show-cart')->with('meassage', 'Cart Product info delete successfully');
    }
//    public function ajaxUpdateCartProduct($productQuantity, $rowId) {
//        Cart::update($rowId, $productQuantity);
//    }
}
