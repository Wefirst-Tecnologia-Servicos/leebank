
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
    $("#procedures").click();
    $("#compliance").click();
    setTimeout(() => {
        selectTabButton("#compliance");
    }, 100);
});