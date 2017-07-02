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
    return view('welcome');
});

Route::get('upPost', ['as' => 'upPost', 'uses' => 'Admin\PostController@upPost']);
Route::get('login', ['as' => 'login', 'uses' => 'Auth\LoginController@login']);
Route::get('upload',['as'=>'getupload','uses'=>'Admin\PostController@getUpload']);
Route::post('upload',['as'=>'postupload','uses'=>'Admin\PostController@postUpload']);
Route::get('post-detail/{id}',['as'=>'postDetail','uses'=>'Client\ClientController@showPostDetail']);
