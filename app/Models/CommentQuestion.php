<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CommentQuestion extends Model
{
    protected $table = 'comment_questions';

    protected $fillable = ['question_id', 'user_id', 'reply_id', 'content_cmt', 'status'];

    public $timestamps = true;

    public function getAllCommentsByQuestionId($question_id) {
        return $this->where('status',1)
                    ->where('question_id', $question_id)
                    ->orderBy('updated_at','desc')->get();
    }
}
