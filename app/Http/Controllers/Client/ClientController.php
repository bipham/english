<?php

namespace App\Http\Controllers\Client;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Post;
use App\Models\Question;
use Illuminate\Support\Facades\DB;

class ClientController extends Controller
{
    public function showPostDetail($id) {
        $dataPost = Post::findOrFail($id);
//        dd($dataPost);
        $dataQuestion = DB::table('questions')-> where('post_id', $dataPost['id'])->get();
//        dd($dataQuestion);
        return view('client.postDetail',compact('dataPost','dataQuestion'));
    }
}
