<?php

namespace App\Http\Controllers\Admin;

//use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\TypeQuestion;
use Request;

class TypeQuestionController extends Controller
{
    public function createNewTypeQuiz() {
        if (Request::ajax()) {
            $typeName = $_GET['typeName'];
            $type_question = new TypeQuestion();
            $typeId = $type_question->createNewTypeQuestion($typeName);
            return json_encode(['typeName' => $typeName, 'typeId' => $typeId]);
        }
//        return "hello";
    }
}
