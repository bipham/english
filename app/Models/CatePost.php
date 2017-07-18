<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CatePost extends Model
{
    protected $table = 'cate_posts';

    protected $fillable = ['post_id', 'cate_id', 'status'];

    public $timestamps = true;

    public function addNewCatePost ($post_id, $cate_id) {
        $newCatePost = new CatePost();
        $newCatePost->post_id = $post_id;
        $newCatePost->cate_id = $cate_id;
        $newCatePost->save();
    }

    public function getCateByLessonId($lesson_id) {
        return $this->where('post_id',$lesson_id)->first();
    }
}
