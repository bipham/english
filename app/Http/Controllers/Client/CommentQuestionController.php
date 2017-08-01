<?php

namespace App\Http\Controllers\Client;

//use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ReadingQuestion;
use App\Models\ReadingQuizz;
use App\Models\ReadingLesson;
use App\Models\ReadingQuestionAndAnswer;
use Request;
use Auth;
//use LRedis;


class CommentQuestionController extends Controller
{
    public function getComments($question_id_custom) {
        if (Request::ajax()) {
            $questionModel = new ReadingQuestion();
            $question_id = $questionModel->getQuestionIdByIdCustom($question_id_custom);
            $commentQuestionModel = new ReadingQuestionAndAnswer();
            $list_comments = $commentQuestionModel->getAllCommentsByQuestionId($question_id);
            foreach ($list_comments as $list_comment) {
                $list_comment->updated_at = timeago($list_comment->updated_at);
            }
            return json_encode(['list_comments' => $list_comments, 'user_id' => Auth::id()]);
        }
    }

    public function getKeywords($question_id_custom) {
        if (Request::ajax()) {
            $questionModel = new ReadingQuestion();
            $question_id = $questionModel->getQuestionIdByIdCustom($question_id_custom);
            $list_keywords = $questionModel->getAllKeywordsByQuestionId($question_id);
            return $list_keywords;
        }
    }

    public function createNewComment() {
//        if (Request::ajax()) {
//            $user_id = $_POST['user_id'];
//            $content_cmt = $_POST['content_cmt'];
//            $question_id_custom = $_POST['question_id_custom'];
//            $reply_id = $_POST['reply_id'];
//            $readingQuestionModel = new ReadingQuestion();
//            $question_id = $readingQuestionModel->getQuestionIdByIdCustom($question_id_custom);
//            $questionAndAnswerModel = new ReadingQuestionAndAnswer();
//            $result = $questionAndAnswerModel->createNewComment($question_id, $user_id, $reply_id, $content_cmt);
//            $redis = LRedis::connection();
//            $redis->publish('message', json_encode(['test'=>'tes']));
            return json_encode(['list_comment' => 'de']);
//        }
    }
}
