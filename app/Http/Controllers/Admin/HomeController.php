<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Facade\FlareClient\View;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index () {
        return view('admin.index');
    }
}
