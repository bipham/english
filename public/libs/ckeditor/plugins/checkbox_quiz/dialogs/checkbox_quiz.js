CKEDITOR.dialog.add( 'checkbox_quizDialog', function( editor ) {
    return {
        title: 'Checkbox Quiz Properties',
        minWidth: 400,
        minHeight: 200,
        contents: [
            {
                id: 'tab-basic',
                label: 'Basic Settings',
                elements: [
                    {
                        type: 'text',
                        id: 'question',
                        label: 'Question number',
                        validate: CKEDITOR.dialog.validate.notEmpty( "Question number field cannot be empty." )
                    },
                    {
                        type: 'text',
                        id: 'opt_question',
                        label: 'Content question',
                        validate: CKEDITOR.dialog.validate.notEmpty( "Content question field cannot be empty." )
                    },
                    {
                        type: 'text',
                        id: 'value_question',
                        label: 'Value question',
                        validate: CKEDITOR.dialog.validate.notEmpty( "Value question field cannot be empty." )
                    }
                ]
            }
        ],
        onOk: function() {
            var dialog = this;
            var class_quiz = dialog.getValueOf( 'tab-basic', 'question' );
            var value_quiz = dialog.getValueOf( 'tab-basic', 'value_question' );
            var opt_quiz = dialog.getValueOf( 'tab-basic', 'opt_question' );
            var html = '<span class="label-checkbox key-label"><strong>' + value_quiz + '</strong></span> <input type="radio" class="question-quiz question-checkbox question-' + class_quiz +'" name="question-' + class_quiz + '" value="' + value_quiz + '" />' + opt_quiz;
            editor.insertHtml( html );
            

        }
    };
});