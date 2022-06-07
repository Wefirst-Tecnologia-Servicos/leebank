
// -------------------- TABFOLDERS -------------------- //

function selectTabButton($button) {
    $button = $($button);
    $button.parent().find("button").removeClass("selected");
    $button.addClass("selected");
    $(`${$button.attr("data-bs-target")} button:first`).click();

}

function selectTabListItem($button) {

    $button = $($button);
    var $li = $button.parent();
    var $ul = $li.parent();

    $ul.find("li").removeClass("selected");
    $li.addClass("selected");
}

// -------------------- PAGE_LOAD --------------------- //

$(document).ready(() => {
    setInterval(function () {
        $("div.container-fluid:not(#divMenuContainer, div.footer, div.compliance-security-body, div.compliance-security-tabs, div.back-to-homepage), div.carousel-item").css("min-height", window.innerHeight + "px");
        $("div.container-fluid:not(#divMenuContainer, div.footer, div.compliance-security-body, div.compliance-security-tabs, div.back-to-homepage), div.carousel-item").css("max-width", window.innerWidth + "px");
    }, 500);

    if (window.location.href.indexOf("#") > -1) {
        setTimeout(() => {
            $(`#${window.location.href.split("#")[1].split("&")[0].split("?")[0]}`)[0].scrollIntoView();
        }, 1000)
    }

    if ($("#procedures, #compliance").length == 2) {
        selectTabButton($("#procedures").click());
        setTimeout(() => {
            selectTabButton($("#compliance").click());
        }, 250);
    }
});
