<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Customer;
use Session;

class SignInController extends Controller
{
    public function index() {
        $recentProducts = Product::orderBy('id', 'desc')->take(20)->get();
        return view('frontEnd.customer.sing-in-register',[
            'recentProducts' => $recentProducts
        ]);
    }
    public function customerLoginCheck(Request $request) {
        $this->validate($request,array(
            'email_address'=>'required',
            'password'=>'required'
        ));

        $customerInfo = Customer::where('email_address', $request->email_address)->first();
        if($customerInfo) {
            $existingPassword = $customerInfo->password;
            if (password_verify($request->password, $existingPassword)) {
                Session::put('customerId', $customerInfo->id);
                Session::put('customerName', $customerInfo->first_name.' '.$customerInfo->last_name);

                return redirect('/');
            } else {
                return redirect('/sign-in')->with('message', 'Please use valid email address & password');
            }
        } else {
            return redirect('/sign-in')->with('message', 'Please use valid email address & password');
        }
    }
    public function customerRegistration() {
        $recentProducts = Product::orderBy('id', 'desc')->take(20)->get();
        return view('frontEnd.customer.register-sing-in',[
            'recentProducts' => $recentProducts
        ]);
    }
    public function newCustomer(Request $request) {
        $this->validate($request, array(
            'first_name'=>'required|max:20|min:5',
            'last_name'=>'required|max:20|min:5',
            'email_address'=>'required',
            'password'=>'required|max:10|min:6',
            'mobile_number'=>'required|max:16',
        ));

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
        return redirect('/');
    }
}
