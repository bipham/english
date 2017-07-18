/**
 * Created by BiPham on 7/9/2017.
 */
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('[name="_token"]').val()
    }
});
var content_post = '';
var content_highlight = '';
var content_quiz = '';
var content_answer_quiz = '';
var cate_selected = '';
var type_question = '';
var title_post = '';
var img_url = '';
var img_name = '';
var img_extension = '';
var listQ = [];
var listAnswer = {};
var i = '';
var idremove = '';
var listHl = [];
var noti = false;
var sandbox = document.getElementById('sandbox');
var boolRemove = false;
var baseUrl = document.location.origin;
var ajaxCreateNewCate = baseUrl + '/createNewCate';
var ajaxCreateNewTypeQuiz = baseUrl + '/createNewTypeQuiz';
var ajaxUploadFinish = baseUrl + '/upload';
var hltr = new TextHighlighter(sandbox, {
    onBeforeHighlight: function (range) {
        i = prompt("Higlight for answer number:", "");
        console.log('i: ' + i);
        if (i) {
            hltr.options['highlightedClass'] ='answer-highlight highlight-' + i;
            if (jQuery.inArray(i, listHl) == -1) {
                listHl.push(i);
            }
            return true;
        }
        else return false;
    },
    onAfterHighlight: function (range, hlts) {
        var qnumber = $('.answer-' + i).data('qnumber');
        $('.highlight-' + i).attr('data-qnumber', qnumber);
        var idClass = 'hl-answer-' + qnumber;
        $('.highlight-' + i).attr('id', idClass);
        console.log('div: ' + $('.remove-ans-' + i).length);
        if ($('.remove-ans-' + i).length == 0) {
            $('.remove-highlight-area').append('<div class="remove-ans-' + i + '">Remove highlight for anwser ' + i + ': <button class="btn btn-info remove" data-removeid="' + i + '">Remove</button></div>');
        }
    },
    onRemoveHighlight: function (hl) {
        var clcus = 'answer-highlight highlight-' + idremove;
        if (hl.className == clcus) {
            if (!noti) {
                boolRemove = window.confirm('Do you really want to remove: "' + hl.className + '"');
                noti = true;
            }
            console.log('bnool: ' + boolRemove);
            if (boolRemove) {
                $('.remove-ans-' + idremove).remove();
                return true;
            }
        }
        else return false;
    }
});

$( document ).ready(function() {
    content_post = CKEDITOR.instances["contentPost"].getData();
    content_quiz = CKEDITOR.instances["contentQuiz"].getData();
    $('.btn-next-step-quiz').click(function () {
        cate_selected = $('#prtcate').val();
        title_post = $('input#itemname').val();
        var checkDataStepPost = checkStepPost();
        if (checkDataStepPost) {
            $('.step-content-post').addClass('hidden-class');
            $('.step-content-quiz').removeClass('hidden-class');
        }
    });

    $('.btn-prev-step-post').click(function () {
        $('.step-content-quiz').addClass('hidden-class');
        $('.step-content-post').removeClass('hidden-class');
    });

    $('.btn-next-step-answer').click(function () {
        var checkDataStepQuiz = checkStepQuiz();
        if (checkDataStepQuiz) {
            if (content_quiz != CKEDITOR.instances["contentQuiz"].getData()) {
                content_quiz = CKEDITOR.instances["contentQuiz"].getData();
                $('.preview-content-quiz .card-block').html(content_quiz);
                $('.answer-area').html('');
                listQ = [];
                $('.question-quiz').each(function () {
                    var qnumber = $(this).data('qnumber');
                    if (jQuery.inArray(qnumber, listQ) == -1) {
                        listQ.push(qnumber);
                        var qorder = $(this).attr('name');
                        qorder = qorder.match(/\d+/);
                        // console.log('Question: ' + listQ);
                        $('.answer-area').append('<div class="answer-key"><span><strong>Answer ' + qorder + ': </strong></span><input class="answer-q answer-' + qorder + '" data-qnumber="' + qnumber + '" /></div>');
                    }
                });
            }
            console.log('listQ: ' + listQ);
            if (listQ.length > 0) {
                $('.step-content-quiz').addClass('hidden-class');
                $('.step-answer-key').removeClass('hidden-class');
            }
            else {
                bootbox.alert({
                    message: "Please enter question of quiz!",
                    backdrop: true
                });
            }
        }
    });

    $('.btn-prev-step-quiz').click(function () {
        $('.step-content-quiz').removeClass('hidden-class');
        $('.step-answer-key').addClass('hidden-class');
    });

    $('.btn-next-step-highlight').click(function () {
        var checkDataStepAnswer = checkStepAnswer();
        if (checkDataStepAnswer) {
            $('.step-highlight-answer').removeClass('hidden-class');
            $('.step-answer-key').addClass('hidden-class');
            if (content_post != CKEDITOR.instances["contentPost"].getData()) {
                content_post = CKEDITOR.instances["contentPost"].getData();
                $('.remove-highlight-area').html('');
                $('#sandbox').html(content_post);
            }
        }
        else {
            bootbox.alert({
                message: "Please enter answer of quiz!",
                backdrop: true
            });
        }
    });

    $('.btn-prev-step-answer').click(function () {
        $('.step-answer-key').removeClass('hidden-class');
        $('.step-highlight-answer').addClass('hidden-class');
        // $('#sandbox').html('');
        // $('.remove-highlight-area').html('');
    });

    $('.btn-next-step-preview').click(function () {
        content_highlight = $('#sandbox').html();
        $('.step-preview-post').removeClass('hidden-class');
        $('.step-highlight-answer').addClass('hidden-class');
        $('#pr-post').html(content_highlight);
        $('.answer-highlight').addClass('hidden-highlight');
        $('#pr-quiz').html(content_quiz);
        $('#pr-quiz .last-option').each(function () {
            var qnumber = $(this).data('qnumber');
            var qorder = $(this).attr('name');
            qorder = qorder.match(/\d+/);
            var answer_key = $('.answer-' + qorder).val();
            $(this).parent().after('<div class="explain-area"><span><strong>Answer ' + qorder + ': ' + answer_key + '</strong></span><a class="btn btn-xs btn-primary btn-locate-highlight" data-qnumber="' + qnumber +'" onclick="scrollToHighlight(' + qorder + ')"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Locate</a><a class="btn btn-xs btn-warning btn-show-comments" data-qnumber="' + qnumber +'" data-toggle="collapse" href="#commentArea-' + qnumber + '" aria-expanded="false" aria-controls="commentArea-' + qnumber + '" onclick="showComments(' + qnumber + ')"><i class="fa fa-question" aria-hidden="true"></i>&nbsp;Comments</a><div class="collapse collage-comments collapse-custom" id="commentArea-' + qnumber +'"> <div class="card card-block comments-area">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</div></div></div>');
        });
        $('#pr-quiz input').each(function () {
            $(this).attr('disabled', 'disabled');
        });
        $('#pr-quiz select').each(function () {
            $(this).attr('disabled', 'disabled');
        });
    });

    $('.btn-prev-step-highlight').click(function () {
        $('.step-preview-post').addClass('hidden-class');
        $('.step-highlight-answer').removeClass('hidden-class');
        $('.answer-highlight').removeClass('hidden-highlight');
        $('.answer-highlight').removeClass('highlighting');
        $('#pr-post').html('');
        $('#pr-quiz').html('');
    });

    $('.btn-create-new-cate').click(function () {
        console.log('ajaxurl: ' + ajaxCreateNewCate);
        var cateName = $('input#newCate').val();
        $.ajax({
            type: "GET",
            url: ajaxCreateNewCate,
            dataType: "json",
            data: { cateName: cateName },
            success: function (data) {
                console.log('sucess:', data);
                $('#prtcate').append('<option selected value="' + data.cate_id + '">' + data.newCate + '</option>');
                $('#newCate').val('');
                bootbox.alert({
                    message: "Create cate success!",
                    backdrop: true
                });
            },
            error: function (data) {
                console.log('Error:', data);
                bootbox.alert({
                    message: "Create cate fail!",
                    backdrop: true
                });
            }
        });
    });

    $('.btn-create-new-type-quiz').click(function () {
        console.log('ajaxurl: ' + ajaxCreateNewTypeQuiz);

        var typeName = $('input#newTypeQuiz').val();

        console.log('typeName: ' + typeName);
        $.ajax({
            type: "GET",
            url: ajaxCreateNewTypeQuiz,
            dataType: "json",
            data: { typeName: typeName },
            success: function (data) {
                console.log('sucess:', data);
                console.log('sucess asd:', data.typeName);
                $('#show-list-type-quiz').append('<input type="checkbox" name="type_quiz" value="' + data.typeId + '">' + data.typeName + '<br />');
                $('#newTypeQuiz').val('');
                bootbox.alert({
                    message: "Create cate success!",
                    backdrop: true
                });
            },
            error: function (data) {
                console.log('Error:', data);
                bootbox.alert({
                    message: "Create cate fail!",
                    backdrop: true
                });
            }
        });
    });

    $('.btn-finish-steps').click(function () {
        console.log('ajax: ' + ajaxUploadFinish);
        content_answer_quiz =  $('#pr-quiz').html();
        content_highlight = $('#pr-post').html();
        type_question = getValueTypeQuestion();
        console.log('img_name: ' + img_name);
        console.log('img_url: ' + img_url);
        // console.log('img_ex: ' + img_extension);
        console.log('Cate id : ' + cate_selected);
        console.log('Title Post : ' + title_post);
        console.log('content highlight: ' + content_highlight);
        console.log('content post: ' + content_post);
        console.log('content quiz: ' + content_quiz);
        console.log('content answer: ' + content_answer_quiz);
        console.log('list answer: ' + JSON.stringify(listAnswer));
        $.ajax({
            type: "POST",
            url: ajaxUploadFinish,
            // dataType: "json",
            data: { img_url: img_url, img_name: img_name, title_post: title_post, list_answer: listAnswer, cate_selected: cate_selected, content_post: content_post, content_highlight: content_highlight, content_quiz: content_quiz, content_answer_quiz: content_answer_quiz, type_question: type_question },
            success: function (data) {
                console.log('sucess:', data);
                // $('#prtcate').append('<option selected value="' + data.newCate + '">' + data.newCate + '</option>');
                // $('#newCate').val('');
                bootbox.alert({
                    message: "Create post success!",
                    backdrop: true,
                    callback: function(){
                        location.href= baseUrl + '/readingPost';
                    }
                });
            },
            error: function (data) {
                console.log('Error:', data);
                bootbox.alert({
                    message: "Create post fail!",
                    backdrop: true
                });
            }
        });
    });
});

$(document).on("click", ".remove",function() {
    idremove = $(this).data('removeid');
    console.log('id_remove: ' + idremove);
    noti = false;
    hltr.removeHighlights();
});

function readURL(input) {
    img_name = $('input[type=file]').val().split('\\').pop();
    img_extension = img_name.substr( (img_name.lastIndexOf('.') + 1) ).toLowerCase();
    var allowedExtensions = ['png', 'jpg', 'jpeg', 'gif'];
    if( allowedExtensions.indexOf(img_extension) == -1 ) {
        bootbox.alert({
            message: "Img not true format!",
            backdrop: true
        });
        $('#imgFeature').val('');
        img_name = '';
        $("#image-main-preview").attr('src', '#');
        $("#image-main-preview").addClass('hidden-class');
        i++;
        return;
    }
    else {
        img_name = $('input[type=file]').val().split('\\').pop();
        // img_extension = img_name.substr( (img_name.lastIndexOf('.') + 1) ).toLowerCase();
        // var img_ex = img_name.substr( (img_name.lastIndexOf('.')) ).toLowerCase();
        // img_name = img_name.replace(img_ex, '');
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $("#" + input.name + "-preview")
                    .attr('src', e.target.result)
                    .width(150);
                img_url = e.target.result;
                $("#" + input.name + "-preview").removeClass('hidden-class');
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
}

function checkStepPost() {
    if (cate_selected == '') {
        bootbox.alert({
            message: "Please select category first!",
            backdrop: true
        });
        return false;
    }
    else if (title_post == '') {
        bootbox.alert({
            message: "Please enter name the post!",
            backdrop: true
        });
        return false;
    }
    else if (img_name == '') {
        bootbox.alert({
            message: "Please select image feature!",
            backdrop: true
        });
        return false;
    }
    else if (CKEDITOR.instances["contentPost"].getData() == '') {
        bootbox.alert({
            message: "Please enter the content of post!",
            backdrop: true
        });
        return false;
    }
    else return true;
}

function checkStepQuiz() {
    if (CKEDITOR.instances["contentQuiz"].getData() == '') {
        bootbox.alert({
            message: "Please enter the content of quiz!",
            backdrop: true
        });
        return false;
    }
    else return true;
}

function checkStepAnswer() {
    $('.preview-content-quiz .card-block .last-option').each(function () {
        var qnumber = $(this).data('qnumber');
        var qorder = $(this).attr('name');
        qorder = qorder.match(/\d+/);
        var answer_key = $('.answer-' + qorder).val();
        if (answer_key != '') {
            listAnswer[qnumber] = answer_key;
        }
        else {
            delete listAnswer[qnumber];
        }
    });
    if (listQ.length == Object.keys(listAnswer).length) {
        return true;
    }
    else return false;
}

function getValueTypeQuestion() {
    var list_type_question = [];
    $('.type-quiz .card-block #show-list-type-quiz input[name=type_quiz]:checked').each(function () {
        var val_type = $(this).val();
        list_type_question.push(val_type);
    });
    return list_type_question;
}