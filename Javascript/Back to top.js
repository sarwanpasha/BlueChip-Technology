    $(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() >= 500) {
                $('#backtotop').fadeIn();
            } else {
                $('#backtotop').fadeOut();
            }
        });

        $('#backtotop').click(function () {
            $('body,html').animate({ scrollTop: 0 }, 800);
        });
    });

