<?php

namespace App\Http\Controllers;

use App\Customer;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    public function manageOrder(Request$request) {
        $allCustomers = Customer::all();
        return view('admin.customer.manage-customer', ['allCustomers'=>$allCustomers]);
    }
    public function deleteOrder($id) {
        $customerById = Customer::find($id);
        $customerById->delete();

        return redirect('/manage-customer')->with('message', 'Customer info delete successfully');
    }
    public function customerHome(){
        return view('frontEnd.customer.customer-home');
    }
    public function customerOrder(){
        return view('frontEnd.customer.customer-order');
    }
    public function customerWishlist(){
        return view('frontEnd.customer.customer-wishlist');
    }
    public function customerProfile(){
        return view('frontEnd.customer.customer-profile');
    }
    public function customerOrderView(){
        return view('frontEnd.customer.customer-order-view');
    }

}
