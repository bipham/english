<?php

namespace App\Http\Controllers\Client;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ReadingLesson;
use App\Models\ReadingCategoryLesson;
use App\Models\ReadingCategory;
use App\Models\ReadingQuizz;
use App\Models\ReadingTypeQuestion;
use App\Models\ReadingTypeQuestionOfQuiz;

class ReadingLessonController extends Controller
{
    public function index()
    {
        $readingLessonModel = new ReadingLesson();
        $cateLessonModel = new ReadingCategoryLesson();
        $categoryModel = new ReadingCategory();
        $lessons = $readingLessonModel->getNewest(8);
        return view('client.reading',compact('lessons', 'cateLessonModel', 'categoryModel'));
    }

    public function readingLessonDetail($link_lesson)
    {
        $lesson_id = getIdLessonFromLinkLesson($link_lesson);
        $readingLessonModel = new ReadingLesson();
        $lesson_detail = $readingLessonModel->getLessonById($lesson_id);
        $quizModel = new ReadingQuizz();
        $lesson_quiz = $quizModel->getQuizByLessonId($lesson_id);
        $type_lesson = $lesson_quiz->type_lesson;
        $readingTypeQuestionModel = new ReadingTypeQuestion();
        if ($type_lesson == 1) {
            $readingTypeQuestionOfQuiz = new ReadingTypeQuestionOfQuiz();
            $type_question_id = $readingTypeQuestionOfQuiz->getTypeQuestionIdByQuizId($lesson_quiz->id);
            $practice_lessons = $readingLessonModel->getPracticeNewestOfTypeQuestion(8, $type_question_id);
            $test_lessons = $readingLessonModel->getTestNewestOfTypeQuestion(8, $type_question_id);
            $type_question = $readingTypeQuestionModel->getTypeQuestionById($type_question_id);
        }
        else {
            $practice_lessons = $readingLessonModel->getPracticeNewestOfTypeLesson(8, $type_lesson);
            $test_lessons = $readingLessonModel->getTestNewestOfTypeLesson(8, $type_lesson);
            $type_question = '';
        }
        $readingCategoryLessonModel = new ReadingCategoryLesson();
        $readingCategoryModel = new ReadingCategory();
//dd($practice_lessons);
        return view('client.readingLessonDetail',compact('lesson_detail', 'lesson_quiz', 'practice_lessons', 'test_lessons', 'readingCategoryLessonModel', 'readingCategoryModel', 'type_lesson', 'type_question'));
    }

    public function readingTypeLesson($link_type_Lesson)
    {
        $type_question_id = getIdLessonFromLinkLesson($link_type_Lesson);
        $readingLessonModel = new ReadingLesson();
        $readingCategoryLessonModel = new ReadingCategoryLesson();
        $readingCategoryModel = new ReadingCategory();
        $practice_lessons = $readingLessonModel->getPracticeNewestOfTypeQuestion(8, $type_question_id);
        $test_lessons = $readingLessonModel->getTestNewestOfTypeQuestion(8, $type_question_id);
        $readingTypeQuestionModel = new ReadingTypeQuestion();
        $type_question = $readingTypeQuestionModel->getTypeQuestionById($type_question_id);
//        dd($test_lessons);
        return view('client.readingTypeLesson',compact('practice_lessons', 'test_lessons', 'readingCategoryLessonModel', 'readingCategoryModel', 'type_question'));
    }
}