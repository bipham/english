<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TypeQuestion extends Model
{
    protected $table = 'type_questions';

    protected $fillable = ['name', 'status'];

    public $timestamps = true;

    public function getAllTypeQuiz() {

    }

    public function createNewTypeQuestion ($type_name) {
        $newTypeQuestion = new TypeQuestion();
        $newTypeQuestion->name = $type_name;
        $newTypeQuestion->save();
        return $newTypeQuestion->id;
    }
}
