<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Post;
use App\Models\Question;
use DOMDocument;
class PostController extends Controller
{
    //
    public function getupload() {
        return view('admin.upPost');
    }

    /**
     * @param ClientUpRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postUpload(Request $request) {
//        dd($request);
//        $html = view('admin.upPost')->render();
//        dd($html);
        $post = new Post();
        $post->name = $request->itemname;
        $post->content = $request->contentPost;
        if ($request->prtcate == 'read') {
            $post->cate_id = 1;
        }
        else {
            $post->cate_id = 2;
        }

        $post->save();

        $question1 = new Question();
        $question1->name = 'cau 1';
        $question1->post_id = $post->id;
        $question1->content = $request->question1;
        $question1->save();

//dd($question1);
        $question2 = new Question();
        $question2->name = 'cau 2';
        $question2->post_id = $post->id;
        $question2->content = $request->question2;
        $question2->save();
//dd($post);
        return 'success';
    }
}
