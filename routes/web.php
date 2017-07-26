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

Route::get('uploadReadingLesson',['as'=>'getUploadReadingLesson','uses'=>'Admin\ReadingLessonController@getUploadReadingLesson']);
Route::post('uploadReadingLesson',['as'=>'postUploadReadingLesson','uses'=>'Admin\ReadingLessonController@postUploadReadingLesson']);

Route::get('createNewCate',['as'=>'createNewCate','uses'=>'Admin\CateController@createNewCate']);
Route::get('createNewTypeQuiz',['as'=>'createNewTypeQuiz','uses'=>'Admin\TypeQuestionController@createNewTypeQuiz']);
Route::get('getTypeQuestion',['as'=>'getTypeQuestion','uses'=>'Admin\TypeQuestionController@getTypeQuestion']);

Route::get('resultReading',['as'=>'resultReading','uses'=>'Client\ResultController@getResultQuiz']);
Route::get('solutionLesson/{lesson_id}-{quiz_id}',['as'=>'solutionLesson','uses'=>'Client\ResultController@getSolutionLesson']);
Route::get('showComments/{question_id_custom}',['as'=>'showComments','uses'=>'Client\CommentQuestionController@getComments']);
Route::get('post-detail/{id}',['as'=>'postDetail','uses'=>'Client\ClientController@showPostDetail']);

Route::group(['prefix'=>'reading'],function () {
    Route::get('',['as'=>'reading','uses'=>'Client\ReadingLessonController@index']);
    Route::get('readingLesson/{lesson}',['as'=>'reading.readingLesson','uses'=>'Client\ReadingLessonController@readingLessonDetail']);
    Route::get('readingTypeLesson/{typeLesson}',['as'=>'reading.readingTypeLesson','uses'=>'Client\ReadingLessonController@readingTypeLesson']);
});