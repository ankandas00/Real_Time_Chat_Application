<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Chat;



// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/regpage',[Chat::class,"regpage"])->name("regpage");
Route::post('/regins',[Chat::class,"regins"])->name("signup");
Route::get('/loginpage',[Chat::class,"loginpage"])->name("loginpage");
Route::post('/loginins',[Chat::class,"loginins"])->name("signin");
Route::get('/chatpage',[Chat::class,"chatpage"])->name("chatpage");
Route::get('/chatdetails/{cid}',[Chat::class,"detailspage"])->name("chatdetails");
Route::post('/msgins',[Chat::class,"msgins"])->name("msginsert");












