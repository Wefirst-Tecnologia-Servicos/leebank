
// -------------------- TABFOLDERS -------------------- //

function selectTabButton($button) {
    $button = $($button);
    $button.parent().find("button").removeClass("selected");
    $button.addClass("selected");
}

function selectTabListItem($button) {

    $button = $($button);
    var $li = $button.parent();
    var $ul = $li.parent();

    $ul.find("li").removeClass("selected");
    $li.addClass("selected");
    /*
    var $tab = $ul.parent();
    var tabId = $tab.attr("id");

    selectTabButton($("button[data-bs-target='#" + tabId + "']"));
    */
}
