<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;
Session_start();

class AdminController extends Controller
{   //ham kiem dang nhap tai khoan admin moi vao duoc dashboard con khong dang nhap khong the vao duoc
    public function AuthLogin(){
        $admin_id= Session::get('admin_id');
        if($admin_id){
            return Redirect::to('dashboard');
        } else{
            return Redirect::to('admin')->send();
        }
    }
    public function index(){
        return view('admin_login');
    }

    public function show_dashboard(){
        $this->AuthLogin(); //goi ham kiem tra
        return view('admin.dashboard');
    }

    public function dashboard(Request $request){
        $this->AuthLogin();
        $admin_email= $request ->admin_email;
        $admin_password = $request ->admin_password;
        $result = DB::table('tbl_admin')->where('admin_email',$admin_email)->where('admin_password',$admin_password)->first();
        if($result)
        {
            Session::put('admin_name',$result->admin_name);
            Session::put('admin_id',$result->admin_id);
            return Redirect::to('/dashboard');
        } else { 
            Session::put('message','Tài khoản hoặc mật khẩu không đúng. Vui lòng nhập lại');
            return Redirect::to('/admin');
        }
    }

    public function logout(){
        $this->AuthLogin(); 
        Session::put('admin_name',null);
        Session::put('admin_id',null);
        return Redirect::to('/admin');
    }
}

