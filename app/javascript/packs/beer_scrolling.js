const beerScrolling = () => {
    let wh = $(window).height();

    $(window).scroll(function() {
        $(".cup").css("top", Math.max((0.5 * wh), (1.5 * wh) - $(this).scrollTop()));
        $(".beer").css("top", Math.max((0.5 * wh), (1.5 * wh) - $(this).scrollTop()));
    });

    $(window).scroll(function() {
        var scroll = $(window).scrollTop(),
            dh = $(document).height(),
            wh = $(window).height();
        var scrollPercent = (scroll / (dh -
            wh)) * 100;
        $(".beer").css('top',
            (110 - scrollPercent) + '%');
        $(".surface").css('opacity',
            0 + (scrollPercent / 30));
        $(".head").css('opacity',
            0 + (scrollPercent / 30));

        $(".head").css('padding-bottom',
            0 + (scrollPercent / 5));
    })
}

export { beerScrolling }