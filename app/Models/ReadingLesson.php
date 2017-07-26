<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class ReadingLesson extends Model
{
    protected $table = 'reading_lessons';

    protected $fillable = ['title', 'content_lesson', 'content_highlight', 'image_feature', 'status'];

    public $timestamps = true;

    public function createNewPost($title_post, $content_post, $content_highlight, $image_feature) {
        $newReadingLesson = new ReadingLesson();
        $newReadingLesson->title = $title_post;
        $newReadingLesson->content_lesson = $content_post;
        $newReadingLesson->content_highlight = $content_highlight;
        $newReadingLesson->image_feature = $image_feature;
        $newReadingLesson->save();
        return $newReadingLesson->id;
    }

    public function getNewest($number) {
        return $this->where('status',1)->orderBy('updated_at','desc')->take($number)->get();
    }

    public function getNewestOfTypeQuestion($number, $type_question_id) {
        $lessons = DB::table('reading_lessons')
            ->leftJoin('reading_quizzs', 'reading_lessons.id', '=', 'reading_quizzs.lesson_id')
            ->leftJoin('reading_type_question_of_quizzes', 'reading_type_question_of_quizzes.quiz_id', '=', 'reading_quizzs.id')
            ->where('reading_quizzs.type_lesson', '=', 1)
            ->where('reading_type_question_of_quizzes.type_question_id', '=', $type_question_id)
            ->take($number)
            ->get();
        return $lessons;
    }

    public function getNewestOfTypeLesson ($number, $type_lesson) {
        $lessons = DB::table('reading_lessons')
            ->leftJoin('reading_quizzs', 'reading_lessons.id', '=', 'reading_quizzs.lesson_id')
            ->where('reading_quizzs.type_lesson', '=', $type_lesson)
            ->take($number)
            ->get();
        return $lessons;
    }

    public function getLessonById($id) {
        return $this->where('id',$id)->get()->first();
    }
}
