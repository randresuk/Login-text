<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;

class DashBoardController extends Controller
{
    //use AuthenticatesUsers;

    public function index()
    {
        return view ('dashboard');
    }

    public function __construct()
    {
        $this->middleware('auth');
    }

}
