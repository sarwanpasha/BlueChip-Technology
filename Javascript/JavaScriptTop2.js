$(function () {
    var prevScroll = 0,
        curDir = 'down',
        prevDir = 'up';

    $(window).scroll(function () {
        if ($(this).scrollTop() >= prevScroll) {
            curDir = 'down';
            if (curDir != prevDir) {
                $('.nav').stop();
                $('.nav').animate({ top: '-100px' }, 300);
                prevDir = curDir;
            }
        } else {
            curDir = 'up';
            if (curDir != prevDir) {
                $('.nav').stop();
                $('.nav').animate({ top: '0px' }, 300);
                prevDir = curDir;
            }
        }
        prevScroll = $(this).scrollTop();
    });
})