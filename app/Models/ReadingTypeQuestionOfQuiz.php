<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ReadingTypeQuestionOfQuiz extends Model
{
    protected $table = 'reading_type_question_of_quizzes';

    protected $fillable = ['quiz_id', 'type_question_id', 'total_questions', 'status'];

    public $timestamps = true;

    public function addNewQuizQuestion($quiz_id, $type_question_id) {
        $quiz_query = DB::table('reading_type_question_of_quizzes')    -> where('quiz_id', $quiz_id)
                                                                        -> where('type_question_id', $type_question_id)
                                                                        -> count();

        if ($quiz_query == 0) {
            $newQuizQuestion = new ReadingTypeQuestionOfQuiz();
            $newQuizQuestion->quiz_id = $quiz_id;
            $newQuizQuestion->type_question_id = $type_question_id;
            $newQuizQuestion->total_questions = 1;
            $newQuizQuestion->save();
        }
        else {
            $total_questions = $this    -> where('quiz_id', $quiz_id)
                                        -> where('type_question_id', $type_question_id)
                                        ->get()
                                        ->pluck('total_questions');

            $new_total_questions = $total_questions[0] + 1;

            DB::table('reading_type_question_of_quizzes')   -> where('quiz_id', $quiz_id)
                                                            -> where('type_question_id', $type_question_id)
                                                            -> update(['total_questions' => $new_total_questions, 'updated_at' => Carbon::now()]);
        }

    }

    public function getTypeQuestionIdByQuizId ($quiz_id) {
        $quiz_query = $this->where('quiz_id',$quiz_id)->get()->first();
        return $quiz_query->type_question_id;
    }
}
