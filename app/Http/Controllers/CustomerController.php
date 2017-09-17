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
}
