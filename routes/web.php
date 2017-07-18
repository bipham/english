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

Route::get('upload',['as'=>'getupload','uses'=>'Admin\PostController@getUpload']);
Route::post('upload',['as'=>'postupload','uses'=>'Admin\PostController@postUpload']);

Route::get('createNewCate',['as'=>'createNewCate','uses'=>'Admin\CateController@createNewCate']);
Route::get('createNewTypeQuiz',['as'=>'createNewTypeQuiz','uses'=>'Admin\TypeQuestionController@createNewTypeQuiz']);

Route::get('resultReading',['as'=>'resultReading','uses'=>'Client\ResultController@getResultQuiz']);
Route::get('solutionLesson/{lesson_id}-{quiz_id}',['as'=>'solutionLesson','uses'=>'Client\ResultController@getSolutionLesson']);
Route::get('showComments/{question_id_custom}',['as'=>'showComments','uses'=>'Client\CommentQuestionController@getComments']);
Route::get('post-detail/{id}',['as'=>'postDetail','uses'=>'Client\ClientController@showPostDetail']);

//Route::resource('photos', 'PhotoController');

Route::resource('readingPost', 'Client\ReadingController');