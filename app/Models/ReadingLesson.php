<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ReadingLesson extends Model
{
    protected $table = 'reading_lessons';

    protected $fillable = ['title', 'content_post', 'content_highlight', 'image_feature', 'status'];

    public $timestamps = true;

    public function createNewPost($title_post, $content_post, $content_highlight, $image_feature) {
        $newReadingLesson = new ReadingLesson();
        $newReadingLesson->title = $title_post;
        $newReadingLesson->content_post = $content_post;
        $newReadingLesson->content_highlight = $content_highlight;
        $newReadingLesson->image_feature = $image_feature;
        $newReadingLesson->save();
        return $newReadingLesson->id;
    }

    public function getNewest($number) {
        return $this->where('status',1)->orderBy('updated_at','desc')->take($number)->get();
    }

    public function getLessonById($id) {
        return $this->where('id',$id)->get()->first();
    }
}
