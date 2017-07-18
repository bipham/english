/**
 * Created by BiPham on 7/19/2017.
 */
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('[name="_token"]').val()
    }
});
var baseUrl = document.location.origin;
var quizId = $('#quiz-test-area').data('quizid');
var lessonId = $('#lesson-content-area').data('lessonid');

function scrollToHighlight(i) {
    // alert('Scroll to: ' + i);
    var last_highlight = $('.highlighting');
    last_highlight.removeClass('highlighting');
    last_highlight.addClass('hidden-highlight');
    $('.highlight-' + i).removeClass('hidden-highlight');
    $('.highlight-' + i).addClass('highlighting');
    var qnumber = $('#pr-post .highlight-' + i).data('qnumber');
    var idClass = 'hl-answer-' + qnumber;
    // $('html,body').animate({
    //         scrollTop: $("#"+idClass).offset().top
    //     }, 2000);
    // $('.highlight-' + i).focus();
}

function showComments(i) {
    var ajaxUrlShowComments = baseUrl + '/showComments/' + i;
    console.log('ajaxUrlShowComments: ' + ajaxUrlShowComments);
    $.ajax({
        type: "GET",
        url: ajaxUrlShowComments,
        dataType: "json",
        // data: { list_answer: list_answer, quizId: quizId},
        success: function (data) {
            console.log('sucess:', data);
            $('#commentArea-' + i).html('');
            if (data.list_comments.length > 0) {
                jQuery.each( data.list_comments, function( index, list_comment ) {
                    $('#commentArea-' + i).append('<p>' + list_comment.content_cmt + '</p>');
                });
            }
            else {
                $('#commentArea-' + i).append('<p>Chua co comment nao cho cau hoi nay!</p>');
            }
        },
        error: function (data) {
            console.log('Error:', data);
            bootbox.alert({
                message: "Error, please contact admin!",
                backdrop: true
            });
        }
    });
}