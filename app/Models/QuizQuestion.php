<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class QuizQuestion extends Model
{
    protected $table = 'quiz_questions';

    protected $fillable = ['quiz_id', 'type_question_id', 'status'];

    public $timestamps = true;

    public function addNewQuizQuestion($quiz_id, $type_question_id) {
        $newQuizQuestion = new QuizQuestion();
        $newQuizQuestion->quiz_id = $quiz_id;
        $newQuizQuestion->type_question_id = $type_question_id;
        $newQuizQuestion->save();
    }
}
