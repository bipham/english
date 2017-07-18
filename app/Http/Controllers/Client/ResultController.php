<?php

namespace App\Http\Controllers\Client;

//use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Question;
use App\Models\Quiz;
use App\Models\ReadingLesson;
use Request;

class ResultController extends Controller
{
    public function getResultQuiz() {
        if (Request::ajax()) {
            $list_answer = $_GET['list_answer'];
            $quizId = $_GET['quizId'];
            $correct_answer = [];
            $quizModel = new Quiz();
            $questionModel = new Question();

            if ($list_answer != 'emptyList') {
                foreach ($list_answer as $qnumber => $answer_key) {
                    $isCorrect = $questionModel->checkAnswerByIdCustom($qnumber, $answer_key);
                    if ($isCorrect) {
                        array_push($correct_answer, $qnumber);
                    }
                }
            }

            $totalQuestion = $quizModel->getTotalQuestionByQuizId($quizId);
            return json_encode(['correct_answer' => $correct_answer, 'totalQuestion' => $totalQuestion]);
        }
    }

    public function getSolutionLesson($lesson_id, $quiz_id) {
        $ReadingLessonModel = new ReadingLesson();
        $lesson = $ReadingLessonModel->getLessonById($lesson_id);
        $quizModel = new Quiz();
        $lesson_quiz = $quizModel->getQuizByLessonId($lesson_id);
        $totalQuestion = $_GET['totalQuestion'];
        $correct_answer = $_GET['correct_answer'];
        $list_answer = $_GET['list_answer'];

        $correct_answer = json_decode($correct_answer);
        $list_answer = json_decode($list_answer);
//        dd($correct_answer);
        return view('client.solutionDetail',compact('lesson', 'lesson_quiz', 'correct_answer', 'totalQuestion', 'list_answer'));
    }

}
