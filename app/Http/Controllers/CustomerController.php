<?php

namespace App\Http\Controllers;

use App\Customer;
use Illuminate\Http\Request;
use App\Order;
use Session;
use App\Payment;
use DB;

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
        $customerId=Session::get('customerId');
        $orders=DB::table('orders')
            ->join('payments','orders.customer_id','=','payments.id')
            ->select('orders.id','orders.order_total','orders.order_status','payments.payment_type','payments.payment_status')
            ->where('orders.customer_id',$customerId)
            ->get();
        return view('frontEnd.customer.customer-order',['orders'=>$orders]);
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
