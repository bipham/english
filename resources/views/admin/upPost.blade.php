<?php
/**
 * Created by PhpStorm.
 * User: nobikun1412
 * Date: 11-Jun-17
 * Time: 18:49
 */
?>

@extends('layout.master')
@section('meta-title')
    Home
@endsection
@section('css')
    <script src="/public/libs/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <div class="container upload-page-custom">
        <form class="form-post-upload" role="form" action="{!!route('getupload')!!}" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="_token" value="{!!csrf_token()!!}">
            <div class="col-info-upload step-content-post card upload-product-custom">
                <div class="card-header">
                    <h3 class="text-left">
                        Nội dung bài viết
                    </h3>
                </div>
                <div class="card-block">
                    <div class="form-content">
                        <div class="form-group">
                            <label>
                                Chọn Danh Mục
                            </label>
                            <select class="form-control" id="prtcate" name="prtcate" >
                                <option selected value="read">Read</option>
                                <option value="write">Write</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="itemname">
                                Tên Bài Viết
                            </label>
                            <input type="text" name="itemname" class="form-control" placeholder="Điền vào đây" required id="itemname">
                        </div>
                        <div class="form-group">
                            <label for="content">
                                Nội dung
                            </label>
                            <textarea name="editor1" id="contentPost" rows="10" cols="80">
                                    Content Post is here!
                                </textarea>
                            <script>
                                // Replace the <textarea id="editor1"> with a CKEditor
                                // instance, using default configuration.
                                CKEDITOR.replace( 'editor1' );
                            </script>
                        </div>
                    </div>
                </div>
                <button type="button" class="btn btn-success btn-next-form-upload btn-block btn-pf">
                    Next
                </button>
            </div>
            <div class="col-info-upload step-content-quiz">
                <div class="card map-upload-product">
                    <div class="card-header">
                        <h3 class="text-left">
                            Câu hỏi
                        </h3>
                    </div>
                    <div class="card-block">
                        <div class="form-group">
                            <label>
                                Câu 1:
                            </label>
                            <div id="q1" class="form-control"> </div>
                        </div>
                        <div class="form-group">
                            <label>
                                Câu 2:
                            </label>
                            <textarea type="text" name="question2" class="form-control" placeholder="Câu hỏi" required> </textarea>
                        </div>
                        <button type="button" class="btn btn-success btn-prev-form-upload btn-block btn-pf">
                            Prev
                        </button>
                        <button type="submit" class="btn btn-success btn-submit-form-upload btn-block btn-pf">
                            Gửi
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection

@section('scripts')
    <script src="{{asset('public/js/admin/admin.js')}}"></script>
@endsection