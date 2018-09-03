<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Auth;

class LoginController extends Controller
{
    //use AuthenticatesUsers;

    public function __construct(){
        $this->middleware('guest', ['only' => 'showLoginForm']);
    }

    public function login()
    {
       $credentials = $this->validate(request(), [ 
        'email' => 'email|required|string',
        'password' => 'required|string'
       ]);

      
       if(Auth::attempt($credentials))
       {
           return redirect()->route('dashboard');
       }

       return back()
       ->withErrors(['email' => trans('auth.failed')])
       ->withInput(request(['email']));
    }
    public function logout()
    {
       Auth::logout();
       return redirect('/');
    }

    public function showLoginForm()
    {
      return view('auth.login');
    }
}
 