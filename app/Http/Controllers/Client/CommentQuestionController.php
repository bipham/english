<?php

namespace App\Http\Controllers\Client;

//use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ReadingQuestion;
use App\Models\ReadingQuizz;
use App\Models\ReadingLesson;
use App\Models\ReadingQuestionAndAnswer;
use Request;

class CommentQuestionController extends Controller
{
    public function getComments($question_id_custom) {
        if (Request::ajax()) {
            $questionModel = new ReadingQuestion();
            $question_id = $questionModel->getQuestionIdByIdCustom($question_id_custom);
            $commentQuestionModel = new ReadingQuestionAndAnswer();
            $list_comments = $commentQuestionModel->getAllCommentsByQuestionId($question_id);
            return json_encode(['list_comments' => $list_comments]);
        }
    }
}
