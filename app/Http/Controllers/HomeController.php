<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');

        function test()
        {
            if(Gate::allows('admin-only', Auth::user()))
            {
                 return true;
            }
            return false;
        }
       
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function private()
    {
        if(test()==true)
        {
            return view('private');
        }
       return "You are not allowed";
        
    }


    public function edit()
    {
      if(test()==true)
      {
        return view('edit');
      }
      else{
        return "You are not allowed";
      }
       
    }

}
