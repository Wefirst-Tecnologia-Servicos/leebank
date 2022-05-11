$(document).ready(() => {
    setInterval(() => {
        $("div.container-fluid:not(#divMenuContainer, div.footer), div.carousel-item").css("min-height", window.innerHeight + "px");
        $("div.container-fluid:not(#navMenu, #divMenuContainer, div.footer), div.carousel-item").css("max-width", window.innerWidth + "px");
    }, 500);
    
    if (window.location.href.indexOf("#") > -1) {
        setTimeout(() => {
            $(`#${window.location.href.split("#")[1].split("&")[0].split("?")[0]}`)[0].scrollIntoView();
        }, 1000)
    }
});