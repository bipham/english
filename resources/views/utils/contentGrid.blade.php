<?php
/**
 * Created by PhpStorm.
 * User: BiPham
 * Date: 7/18/2017
 * Time: 4:45 PM
 */
?>
<div class="card col-xs-6 col-md-3 lesson-item">
    <div class="card-top-thumbnail img-thumbnail-middle">
        <div class="img-thumbnail-inner">
            <img class="img-middle-responsive" src="{{ asset('storage/upload/images/img-feature/' . $lesson->image_feature) }}" alt="IELTS">
        </div>
    </div>
    <div class="card-block card-body-product">
        <span class="name-product">
            <?php
                $title_lesson = str_replace(" ","-", $lesson->title);
            ?>
            <a href="{{route('readingPost.show', 'lesson' . $lesson->id . '-' . $title_lesson)}}">
                <h4 class="card-title title-product">{!! $lesson->title !!}</h4>
            </a>
        </span>
        <!--            <p class="card-text short-desc-product"></p>-->
        <span class="card-cate-product card-left-text">
                <a href="#">{!! $cate->name !!}</a>
            </span>
    </div>
    <div class="card-footer card-footer-product">

    </div>
</div>
