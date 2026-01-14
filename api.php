<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


use App\Http\Controllers\Chat;

Route::any('/msgins',[Chat::class,"msgins"])->name("msginsert");

Route::any('/showmsg',[Chat::class,"showmsg"])->name("showmsg");






Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
