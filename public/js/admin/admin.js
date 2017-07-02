function confirmation (msg) {
	var result;
	if (window.confirm(msg)) {
		result = true;
	}
	else {
		result = false;
	}
	return result;
}

var test = '';

$( document ).ready(function() {
	$('.btn-next-form-upload').click(function () {
       test = CKEDITOR.instances["contentPost"].getData();

        $('.step-content-post').hide();
		$('.step-content-quiz').show();
        console.log(test);
        $('#q1').html(test);
    });

	$('.btn-prev-form-upload').click(function () {
		$('.step-content-quiz').hide();
        $('.step-content-post').show();
    });
});