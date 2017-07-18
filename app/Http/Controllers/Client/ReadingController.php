<?php

namespace App\Http\Controllers\Client;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ReadingLesson;
use App\Models\CatePost;
use App\Models\Category;
use App\Models\Quiz;
use App\Models\Question;

class ReadingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $readingLesson = new ReadingLesson();
        $cateLessonModel = new CatePost();
        $categoryModel = new Category();
        $lessons = $readingLesson->getNewest(8);
//        dd($categoryModel);
        return view('client.reading',compact('lessons', 'cateLessonModel', 'categoryModel'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $totalQuestion = $_GET['totalQuestion'];
        $correct_answer = $_GET['correct_answer'];
        $list_answer = $_GET['list_answer'];
        $correct_answer = json_decode($correct_answer);
        dd($correct_answer);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($link_lesson)
    {
        $lesson_id = getIdLessonFromLinkLesson($link_lesson);
        $ReadingLessonModel = new ReadingLesson();
        $lesson = $ReadingLessonModel->getLessonById($lesson_id);
        $quizModel = new Quiz();
        $lesson_quiz = $quizModel->getQuizByLessonId($lesson_id);
//        $questionModel = new Question();
//        $totl = stdClass();
//        dd($totl);

        return view('client.lessonDetail',compact('lesson', 'lesson_quiz'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
