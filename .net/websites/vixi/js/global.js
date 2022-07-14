
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
