$(document).ready(() => {
    const $images = $("div[style*='background-image']");

    var imagesToLoad = $images.length;
    
    for (var i = 1; i < imagesToLoad; i++) {

        var $img = $($images.get(i));
        var imgSrc = $img.attr('style').split("url(")[1].split(")")[0].substr(1).replace('"', "");

        var $loaded = $('<img/>').attr('src', imgSrc);

        $loaded.on('load', function () {
            $loaded.remove();
            imagesToLoad--;
            if (imagesToLoad < 5) {
                loadPage();
            }
        });
    }
});

function loadPage() {

    setInterval(() => {
        $("div.container-fluid:not(#divMenuContainer, div.footer), div.carousel-item").css("min-height", window.innerHeight + "px");
        $("div.container-fluid:not(#navMenu, #divMenuContainer, div.footer), div.carousel-item").css("max-width", window.innerWidth + "px");
        $("body").removeClass("firstLoad");
    }, 500);

    if (window.location.href.indexOf("#") > -1) {
        setTimeout(() => {
            $(`#${window.location.href.split("#")[1].split("&")[0].split("?")[0]}`)[0].scrollIntoView();
        }, 1000)
    }
}