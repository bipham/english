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
    @include('utils.toolbarReadingLesson')

    @section('titleTypeLesson')
        READING IELTS
    @endsection

    @section('readingIntro')

    @endsection

    @section('readingPractice')
        <div class="container reading-page page-custom">
            <div class="list-reading-thumbnail">
                <div class="row list-lesson-thumbnail">
                    @foreach($lessons as $lesson)
                        <?php
                        $cate_lesson = $cateLessonModel->getCateByLessonId($lesson->id);
                        $cate = $categoryModel->getCateById($cate_lesson->cate_id);
                        ?>
                        @include('utils.contentGrid',['lesson' => json_decode($lesson), 'cate' => json_decode($cate)])
                    @endforeach
                </div>
            </div>
        </div>
    @endsection

    @section('readingTest')

    @endsection
@endsection

@section('scripts')
    <script>
        $(function () {
            $('#myTab a.reading-practice').tab('show');
            $('#myTab a.reading-intro').addClass('hidden');
            $('#myTab a.reading-test').addClass('hidden');
        })
    </script>
@endsection