<?php

namespace App\Http\Controllers\Client;

//use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Question;
use App\Models\Quiz;
use App\Models\ReadingLesson;
use App\Models\CommentQuestion;
use Request;

class CommentQuestionController extends Controller
{
    public function getComments($question_id_custom) {
        if (Request::ajax()) {
            $questionModel = new Question();
            $question_id = $questionModel->getQuestionIdByIdCustom($question_id_custom);
            $commentQuestionModel = new CommentQuestion();
            $list_comments = $commentQuestionModel->getAllCommentsByQuestionId($question_id);
            return json_encode(['list_comments' => $list_comments]);
        }
    }
}
