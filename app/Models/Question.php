<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $table = 'questions';

    protected $fillable = ['quiz_id', 'question_id_custom', 'answer', 'status'];

    public $timestamps = true;

    public function addNewQuestion($quiz_id, $question_id_custom, $answer) {
        $newQuestion = new Question();
        $newQuestion->quiz_id = $quiz_id;
        $newQuestion->question_id_custom = $question_id_custom;
        $newQuestion->answer = $answer;
        $newQuestion->save();
    }

    public function checkAnswerByIdCustom($question_id_custom, $answer_key) {
        $answer_extractly = $this->where('question_id_custom',$question_id_custom)->get()->pluck('answer');
        if ($answer_extractly[0] == $answer_key) {
            return true;
        }
        else return false;
    }

    public function getQuestionIdByIdCustom($question_id_custom) {
        $query = $this->where('question_id_custom',$question_id_custom)->get()->pluck('id');
        return $query[0];
    }
}
