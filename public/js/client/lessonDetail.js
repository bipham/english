/**
 * Created by BiPham on 7/18/2017.
 */
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('[name="_token"]').val()
    }
});
var baseUrl = document.location.origin;
var ajaxUrlResult = baseUrl + '/resultReading';
var list_answer = {};
var quizId = $('#quiz-test-area').data('quizid');
var lessonId = $('#lesson-content-area').data('lessonid');
$('.btn-submit-quiz').click(function () {
    list_answer = {};
    getAllAnswer();
    if (Object.keys(list_answer).length == 0) {
        console.log('list answer: ' + Object.keys(list_answer).length);
        list_answer = 'emptyList';
    }
    console.log('list answer: ' + JSON.stringify(list_answer));
    console.log('quizId: ' + quizId);
    $.ajax({
        type: "GET",
        url: ajaxUrlResult,
        dataType: "json",
        data: { list_answer: list_answer, quizId: quizId},
        success: function (data) {
            console.log('sucess:', data);
            var numberCorrect = data.correct_answer.length;
            bootbox.alert({
                message: "Result: " + numberCorrect + "/" + data.totalQuestion,
                callback: function(){
                    location.href= baseUrl + '/solutionLesson/' + lessonId + '-' + quizId + '?list_answer=' + JSON.stringify(list_answer) + '&correct_answer=' + JSON.stringify(data.correct_answer) + '&totalQuestion=' + data.totalQuestion;
                }
            });

        },
        error: function (data) {
            console.log('Error:', data);
            bootbox.alert({
                message: "Error, please contact admin!",
                backdrop: true
            });
        }
    });
});

function bitest() {

}

function getAllAnswer() {
    $('#quiz-test-area .question-quiz').each(function () {
        var qnumber = $(this).data('qnumber');
        var qorder = $(this).attr('name');
        qorder = qorder.match(/\d+/);
        if ($(this).hasClass('question-radio')) {
            if ($(this).is(':checked')) {
                var answer_key = $(this).val();
                if (answer_key != '') {
                    list_answer[qnumber] = answer_key;
                }
                else {
                    delete list_answer[qnumber];
                }
            }
        }
        else if ($(this).hasClass('question-checkbox')) {
            if ($(this).is(':checked')) {
                var answer_key = $(this).val();
                if (answer_key != '') {
                    list_answer[qnumber] = answer_key;
                }
                else {
                    delete list_answer[qnumber];
                }
            }
        }
        else if ($(this).hasClass('question-input')) {
            var answer_key = $(this).val();
            if (answer_key != '') {
                list_answer[qnumber] = answer_key;
            }
            else {
                delete list_answer[qnumber];
            }
        }
        else if ($(this).hasClass('question-select')) {
            var answer_key = $(this).val();
            if (answer_key != '') {
                list_answer[qnumber] = answer_key;
            }
            else {
                delete list_answer[qnumber];
            }
        }
    });
}