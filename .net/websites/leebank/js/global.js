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

    setInterval(() => {
        $("body").removeClass("firstLoad");
    }, 500);
});

function loadPage() {

    if (window.location.href.indexOf("#") > -1) {
        setTimeout(() => {
            $(`#${window.location.href.split("#")[1].split("&")[0].split("?")[0]}`)[0].scrollIntoView();
        }, 1000)
    }
}