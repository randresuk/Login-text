<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    
    protected $redirectTo = '/';

    public function register()
    {
        return view ('register');
    }

    public function __construct()
    {
        $this->middleware('guest');
    }

    

    protected function create()
    {   
        $data = request()->all();
        return User::create([
            'name' => $data['name'],
            'document' => $data['document'],
            'type_document' => $data['type_document'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
        ]);
    }
}
