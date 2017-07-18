<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Quiz extends Model
{
    protected $table = 'quizzes';

    protected $fillable = ['post_id', 'content_quiz', 'content_answer_quiz', 'total_questions', 'status'];

    public $timestamps = true;

    public function createNewQuiz($post_id, $content_quiz, $content_answer_quiz, $total_questions) {
        $newQuiz = new Quiz();
        $newQuiz->post_id = $post_id;
        $newQuiz->content_quiz = $content_quiz;
        $newQuiz->content_answer_quiz = $content_answer_quiz;
        $newQuiz->total_questions = $total_questions;
        $newQuiz->save();
        return $newQuiz->id;
    }

    public function getQuizByLessonId($id) {
        return $this->where('post_id',$id)->get()->first();
    }

    public function getTotalQuestionByQuizId($quiz_id) {
        $query = $this->where('id',$quiz_id)->get()->pluck('total_questions');
        return $query[0];
    }
}
