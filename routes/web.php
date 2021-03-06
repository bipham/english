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

// Authentication routes...
Route::get('login', ['as'=>'getLogin', 'uses' => 'Auth\LoginController@getLogin']);
Route::post('login',['as'=>'postLogin','uses'=>'Auth\LoginController@postLogin']);



/*********************************************************
 *
 *                  ROUTE FOR ADMIN MODULE
 *
 *********************************************************/

Route::group(['domain' => 'admin.english.dev', 'middleware' => 'auth'], function () {
    Route::get('/', function () {
        return 'hello';
    });
    Route::get('uploadReadingLesson',['as'=>'getUploadReadingLesson','uses'=>'Admin\ReadingLessonController@getUploadReadingLesson']);
    Route::post('uploadReadingLesson',['as'=>'postUploadReadingLesson','uses'=>'Admin\ReadingLessonController@postUploadReadingLesson']);

    Route::get('createNewUser',['as'=>'getCreateNewUser','uses'=>'Admin\UserController@getCreateNewUser']);
    Route::post('createNewUser',['as'=>'postCreateNewUser','uses'=>'Admin\UserController@postCreateNewUser']);
});

Route::get('/', function () {
    return view('welcome');
});

Route::get('home', function () {
    return view('welcome');
});



/*********************************************************
 *
 *
 *                  ROUTE FOR CLIENT MODULE
 *
 *
 *
 *********************************************************/
Route::group(['domain'=>'english.dev', 'middleware' => 'auth'], function () {
    Route::get('createNewCate',['as'=>'createNewCate','uses'=>'Admin\CateController@createNewCate']);
    Route::get('createNewTypeQuiz',['as'=>'createNewTypeQuiz','uses'=>'Admin\TypeQuestionController@createNewTypeQuiz']);
    Route::get('getTypeQuestion',['as'=>'getTypeQuestion','uses'=>'Admin\TypeQuestionController@getTypeQuestion']);

    Route::get('resultReading',['as'=>'resultReading','uses'=>'Client\ResultController@getResultQuiz']);
    Route::get('solutionLesson/{lesson_id}-{quiz_id}',['as'=>'solutionLesson','uses'=>'Client\ResultController@getSolutionLesson']);
    Route::get('showComments/{question_id_custom}',['as'=>'showComments','uses'=>'Client\CommentQuestionController@getComments']);
    Route::get('showKeywords/{question_id_custom}',['as'=>'showKeywords','uses'=>'Client\CommentQuestionController@getKeywords']);

    Route::post('enterNewComment',['as'=>'enterNewComment','uses'=>'Client\CommentQuestionController@createNewComment']);


    Route::group(['prefix'=>'reading'],function () {
        Route::get('',['as'=>'reading','uses'=>'Client\ReadingLessonController@index']);
        Route::get('readingLesson/{lesson}',['as'=>'reading.readingLesson','uses'=>'Client\ReadingLessonController@readingLessonDetail']);
        Route::get('readingTypeLesson/{typeLesson}',['as'=>'reading.readingTypeLesson','uses'=>'Client\ReadingLessonController@readingTypeLesson']);
    });
});
