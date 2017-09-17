<?php

namespace App\Http\Controllers;

use App\Customer;
use App\Shipping;
use Illuminate\Http\Request;
use Session;
use App\Order;
use App\Payment;
use App\OrderDetail;
use Cart;
use DB;
use App\Product;

class CheckoutController extends Controller
{
    public function index() {
        $recentProducts = Product::orderBy('id', 'desc')->take(20)->get();
        return view('frontEnd.checkout.checkout', [
            'recentProducts' => $recentProducts
        ]);
    }
    public function saveCustomerInfo(Request $request) {
        $customer = new Customer();
        $customer->first_name = $request->first_name;
        $customer->last_name = $request->last_name;
        $customer->email_address = $request->email_address;
        $customer->password = bcrypt($request->password);
        $customer->mobile_number = $request->mobile_number;
        $customer->date_of_birth = $request->date_of_birth;
        $customer->address = $request->address;
        $customer->national_id = $request->national_id;
        $customer->district_name = $request->district_name;
        $customer->country_name = $request->country_name;
        $customer->save();
        Session::put('customerId', $customer->id);
        Session::put('customerName', $request->first_name.' '.$request->last_name);
        return redirect('/shipping-info');
    }
    public function showShippingInfo() {
        $customerId = Session::get('customerId');
        $customerById = Customer::where('id', $customerId)->first();
        $recentProducts = Product::orderBy('id', 'desc')->take(20)->get();
        return view('frontEnd.shipping.shipping', [
            'customerById'=>$customerById,
            'recentProducts' => $recentProducts
        ]);
    }
    public function saveShippingInfo(Request $request) {
        $shipping = new Shipping();
        $shipping->full_name = $request->full_name;
        $shipping->mobile_number= $request->mobile_number	;
        $shipping->address = $request->address;
        $shipping->save();
        Session::put('shippingId', $shipping->id);
        return redirect('/payment-info');
    }
    public function showPaymentInfo() {
        $recentProducts = Product::orderBy('id', 'desc')->take(20)->get();
        return view('frontEnd.payment.payment', [
            'recentProducts' => $recentProducts
        ]);
    }

    private function orderByPcash($payment_type) {
        $this->saveOrderInfo();
        $this->savePaymentInfo($payment_type);
        $this->saveOrderDetailInfo();
    }
    private function saveOrderInfo() {
        $order = new Order();
        $order->customer_id = Session::get('customerId');
        $order->shipping_id = Session::get('shippingId');
        $order->order_total = Session::get('order_total');
        $order->save();
        Session::put('orderId', $order->id);
    }
    private function savePaymentInfo($payment_type) {
        $payment = new Payment();
        $payment->order_id = Session::get('orderId');
        $payment->payment_type = $payment_type;
        $payment->save();
    }
    private function saveOrderDetailInfo() {
        $cartProducts = Cart::content();
        foreach ($cartProducts as $cart_product) {
            $orderDetail = new OrderDetail();
            $orderDetail->order_id = Session::get('orderId');
            $orderDetail->product_id = $cart_product->id;
            $orderDetail->product_name = $cart_product->name;
            $orderDetail->product_code = $cart_product->options->code;
            $orderDetail->product_price = $cart_product->price;
            $orderDetail->product_quantity = $cart_product->qty;
            $orderDetail->save();
        }
    }
    public function newOrderInfo(Request $request) {
        $payment_type = $request->payment_type;
        switch ($payment_type) {
            case 'pcash':
                $this->orderByPcash($payment_type);
                break;
            case 'procket':
                $this->orderByPcash($payment_type);
                break;
            case 'pbkash':
                $this->orderByPcash($payment_type);
                break;
            case 'pvisa':
                $this->orderByPcash($payment_type);
                break;
            case 'pmaster':
                $this->orderByPcash($payment_type);
                break;
            case 'pnexus':
                $this->orderByPcash($payment_type);
                break;
            case 'pamerican':
                $this->orderByPcash($payment_type);
                break;
        }
        return redirect('/complete-order');
    }
    public function completeOrderInfo() {
        $firstTopProducts = DB::table('products')->where('top_product_status', 1)->orderBy('id', 'desc')->skip(0)->take(4)->get();
        $secondTopProducts = DB::table('products')->where('top_product_status', 1)->orderBy('id', 'desc')->skip(4)->take(4)->get();
        $thirdTopProducts = DB::table('products')->where('top_product_status', 1)->orderBy('id', 'desc')->skip(8)->take(4)->get();
        $fourthTopProducts = DB::table('products')->where('top_product_status', 1)->orderBy('id', 'desc')->skip(12)->take(4)->get();

        return view('frontEnd.order.complete-order',[
            'firstTopProducts'=>$firstTopProducts,
            'secondTopProducts'=>$secondTopProducts,
            'thirdTopProducts'=>$thirdTopProducts,
            'fourthTopProducts'=>$fourthTopProducts
        ]);
    }
    public function customerEmailCheck($email) {
        $customerByEmail = Customer::where('email_address', $email)->first();
        if($customerByEmail) {
            echo 'Email Address Already Exist';
        } else {
            echo "Email Address Available ";
        }
    }

}
