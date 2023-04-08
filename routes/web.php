<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('/login');
});

Auth::routes();

Route::match(['get', 'post'], '/register', function () {
    return redirect('/login');
})->name('register');

Route::get('/home', 'HomeController@index')->name('home');
Route::get('redirect/{driver}', 'Auth\LoginController@redirectToProvider')->name('login.provider');
Route::get('{driver}/callback', 'Auth\LoginController@handleProviderCallback')->name('login.callback');

Route::resource('users', 'UserController');

Route::resource('candidates', 'CandidateController');

Route::get('/pilihan','ChoiceController@pilihan')->name('candidates.pilihan');
Route::put('/users/{id}/pilih','ChoiceController@pilih')->name('users.pilih');


Route::group(['prefix' => 'otp'], function () {
    Route::get('/login', 'AuthOtpController@login')->name('otp.login');
    Route::post('/generate', 'AuthOtpController@generate')->name('otp.generate');
    Route::get('/verification/{user_id}', 'AuthOtpController@verification')->name('otp.verification');
    Route::post('/login', 'AuthOtpController@loginWithOtp')->name('otp.getlogin');
});


