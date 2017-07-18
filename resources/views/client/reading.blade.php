<?php
/**
 * Created by PhpStorm.
 * User: BiPham
 * Date: 7/18/2017
 * Time: 4:42 PM
 */
?>
@extends('layout.master')
@section('meta-title')
    Home
@endsection
@section('content')

<div class="container reading-page page-custom">
    <div class="list-reading-thumbnail">
        <h2 class="title-section-reading bd-green">Reading IELTS</h2>
        <div class="row list-lesson-thumbnail">
            @foreach($lessons as $lesson)
                <?php
                $cate_lesson = $cateLessonModel->getCateByLessonId($lesson->id);
                $cate = $categoryModel->getCateById($cate_lesson->cate_id);
//                dd($cate);
                ?>
                @include('utils.contentGrid',['lesson' => json_decode($lesson), 'cate' => json_decode($cate)])
            @endforeach
        </div>
    </div>
</div>

@endsection

@section('scripts')

@endsection