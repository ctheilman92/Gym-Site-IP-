$(window).scroll(function () {
    $("#positably").css("top", Math.max(62, 462 - $(this).scrollTop()));
});