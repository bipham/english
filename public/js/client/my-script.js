$( document ).ready(function() {

    var i = 1;
    var color = 'rgb(100, 214, 29)';
    var hltr = new TextHighlighter(document.body, {
        onBeforeHighlight: function (range) {
            // ...

            console.log(hltr);
            console.log(hltr.options);

            hltr.setColor(color);
            hltr.options['highlightedClass'] ='answer tesst-' + i;
            color = 'rgb(244, 67, 54)';
            i++;
            // hltr.removeHighlights();
            return true;

        },
        onAfterHighlight: function (range, hlts) {
            // hltr.contextClass('test-hl');
            // console.log($(this));
            // hltr.hi('tesst-' + i);
            // i++;
        }
    });
    // var searchTerms = $('#collapseProductInfo').val();

    $('.card').on('shown.bs.collapse', function () {
        // do something…
        $(".detail-desc-product-custom").unmark();
        var $card_block = $(this).find('.card-block');
        var searchTerm = $card_block.text();
        var searchTerms = 'A';
        $(".detail-desc-product-custom").mark(searchTerm, {
            separateWordSearch: false,
            className: 'q1-test',
            "done": function(counter){
                var html = $('.detail-desc-product-custom').html();
                console.log(html);
                $('.q1-test').append("<span class='add'>hello</span>");
    },
        });

    });


    $('.card').on('hidden.bs.collapse', function () {
        // do something…
        $(".detail-desc-product-custom").unmark();
    });
});