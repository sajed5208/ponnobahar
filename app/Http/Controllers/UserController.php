<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    public function AddUser(){
        return view('/admin.user.add-user');
    }
    public function saveUserInfo(Request$request){
      $user= new User();
      $user->name=$request->name;
      $user->email=$request->email;
      $user->password=bcrypt($request->password);
      $user->phone_number=$request->phone_number;
      $user->address=$request->address;
      $user->save();
      return redirect('/add-user')->with('message','User Info Save Successfully ');
    }
    public function manageUserInfo(){
       $users=User::all();
       return view('admin.user.manage-user',['users'=>$users]);

    }
    public function deleteUserInfo($id){
       $user=User::find($id);
       $user->delete();
        return redirect('/manage-user')->with('message','User Info Delete Successfully');
    }
}
