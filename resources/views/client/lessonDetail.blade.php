<?php
/**
 * Created by PhpStorm.
 * User: BiPham
 * Date: 7/18/2017
 * Time: 8:30 PM
 */
//dd($lesson);
?>
@extends('layout.master')
@section('meta-title')
    Lesson Detail
@endsection
@section('content')
    <div class="container lesson-detail-page page-custom">
        <input type="hidden" name="_token" value="{!!csrf_token()!!}">
        <div class="row lesson-detail">
            <div class="col-md-6 card preview-post">
                <div class="card-header">
                    <h3 class="text-left">
                        Noi dung Post!
                    </h3>
                </div>
                <div class="card-block">
                    <div id="lesson-content-area" data-lessonid="{!! $lesson->id !!}">
                        {!! $lesson->content_post !!}
                    </div>
                </div>
            </div>
            <div class="col-md-6 card preview-quiz">
                <div class="card-header">
                    <h3 class="text-left">
                        Noi dung Quiz!
                    </h3>
                </div>
                <div class="card-block">
                    <div id="quiz-test-area" data-quizId="{!! $lesson_quiz->id !!}">
                        {!! $lesson_quiz->content_quiz !!}
                    </div>
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-danger btn-submit-quiz btn-custom">
            Submit
        </button>
    </div>
@endsection

@section('scripts')
    <script src="{{asset('public/js/client/lessonDetail.js')}}"></script>
@endsection
