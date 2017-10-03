<?php

namespace App\Http\Controllers;

use App\Customer;
use App\Order;
use App\OrderDetail;
use App\Payment;
use App\Product;
use App\Shipping;
use Illuminate\Http\Request;
use DB;
use PDF;
use App\NowOrder;
use Cart;

class OrderController extends Controller
{

    public function manageOrderInfo() {
        $allOrders = DB::table('orders')
            ->join('customers', 'orders.customer_id', '=', 'customers.id')
            ->join('payments', 'orders.id', '=', 'payments.order_id')
            ->select('orders.id', 'orders.order_total','orders.order_status', 'orders.order_date', 'customers.first_name', 'customers.last_name', 'payments.payment_type', 'payments.payment_status')
            ->orderBy('orders.id', 'desc')
            ->get();
        return view('admin.order.manage-order', ['allOrders'=>$allOrders]);
    }
    public function viewOrderDetails($id) {
        $orderInfo = Order::find($id);
        $orderPaymentInfo = Payment::where('order_id', $id)->first();
        $orderProductsInfo = OrderDetail::where('order_id', $id)->get();
        $orderCustomerInfo = Customer::find($orderInfo->customer_id);
        $orderShippingInfo = Shipping::find($orderInfo->shipping_id);
        return view('admin.order.view-order', [
            'orderInfo'=>$orderInfo,
            'orderProductsInfo' =>$orderProductsInfo,
            'orderCustomerInfo' => $orderCustomerInfo,
            'orderShippingInfo' => $orderShippingInfo,
            'orderPaymentInfo' => $orderPaymentInfo
        ]);
    }
    public function viewOrderInvoice($id) {
        $orderInfo = Order::find($id);
        $billingInfo = Customer::find($orderInfo->customer_id);
        $shippingInfo = Shipping::find($orderInfo->shipping_id);
        $orderProductsInfo = OrderDetail::where('order_id', $id)->get();
        return view('admin.order.view-order-invoice', [
            'orderInfo' => $orderInfo,
            'billingInfo' => $billingInfo,
            'shippingInfo' => $shippingInfo,
            'orderProductsInfo' => $orderProductsInfo
        ]);
    }
    public function downloadOrderInvoice($id) {
        $orderInfo = Order::find($id);
        $billingInfo = Customer::find($orderInfo->customer_id);
        $shippingInfo = Shipping::find($orderInfo->shipping_id);
        $orderProductsInfo = OrderDetail::where('order_id', $id)->get();
        $pdf = PDF::loadView('admin.order.download-invoice-template', [
                'orderInfo' => $orderInfo,
                'billingInfo' => $billingInfo,
                'shippingInfo' => $shippingInfo,
                'orderProductsInfo' => $orderProductsInfo,
        ]);
//        return $pdf->stream();
        return $pdf->download('0000'.$id.'.pdf');
    }
    public function editOrder($id) {
        $orderById = DB::table('orders')
            ->join('payments', 'orders.id', '=', 'payments.order_id')
            ->select('orders.id', 'orders.order_status', 'payments.payment_status')
            ->where('orders.id', $id)
            ->first();
        return view('admin.order.edit-order', ['orderById' => $orderById]);
    }
    private function updateOrderStatus($request) {
        $orderById = Order::find($request->order_id);
        $orderById->order_status = $request->order_status;
        $orderById->save();
    }
    private function updatePaymentStatus($request) {
        $paymentByOrderId = Payment::find($request->order_id);
        $paymentByOrderId->payment_status = $request->payment_status;
        $paymentByOrderId->save();
    }
    private function updateProductStockAmount($request) {
        $orderDetails = OrderDetail::where('order_id', $request->order_id)->get();
        foreach ($orderDetails as $orderProduct) {
            $product_id = $orderProduct->product_id;
            $productById = Product::find($product_id);
            $productById->product_sku = $productById->product_sku - $orderProduct->product_quantity;
            $productById->save();
        }
    }
    public function updateOrder(Request $request) {
        $this->updateOrderStatus($request);
        $this->updatePaymentStatus($request);
        $this->updateProductStockAmount($request);
        return redirect('/manage-order');
    }
    public function deleteOrder($id) {
        $orderById = Order::find($id);
        $orderById->delete();

        $orderPayment = Payment::where('order_id', $id)->first();
        $orderPayment->delete();

        $orderDetails = OrderDetail::where('order_id', $id)->get();
        foreach ($orderDetails as $orderDetail) {
            $orderDetail->delete();
        }
        return redirect('/manage-order');
    }
    public function orderNow($id){
        $productById=Product::where('id',$id)->get();
//        return $orderDetails;
        return view('frontEnd.product.order-now',['productById'=>$productById]);
    }


    public function saveOrder(Request$request){
       $nowOrder=new NowOrder();
       $nowOrder->product_id=$request->product_id;
       $nowOrder->product_name=$request->product_name;
       $nowOrder->product_quantity=$request->product_quantity;
       $nowOrder->billing_name=$request->billing_name;
       $nowOrder->billing_email=$request->billing_email;
       $nowOrder->billing_mobile=$request->billing_mobile;
       $nowOrder->billing_address=$request->billing_address;
       $nowOrder->sipping_name=$request->sipping_name;
       $nowOrder->sipping_email=$request->sipping_email;
       $nowOrder->sipping_mobile=$request->sipping_mobile;
       $nowOrder->sipping_address=$request->sipping_address;
       $nowOrder->payment_method=$request->payment_method;
       $nowOrder->save();
        return redirect('/complete-order');
    }

    public function viewOrder(){
        $nowOrders=NowOrder::all();
        return view('admin.order.order-now.view-order',['nowOrders'=>$nowOrders]);
    }
    public function deleteCustomerOrder($id){
        $nowOrder=NowOrder::find($id);
        $nowOrder->delete();
        return redirect('/view-order')->with('message','Delete Successful');
    }
}

