/**
 * @license WeFirst
 * @description
 * Provides the AngularJS menu component
 */

function closeSignMenuPopup() {
    $("#popupMenuSign, #behindMenuSign").removeClass('open-popup');
    $("body").css({
        "overflow": "auto"
    });
}

function openSignMenuPopup() {
    window.scrollTo(0, 0);
    $("body").css({
        "overflow": "hidden"
    });
    $('#behindMenuSign').addClass('open-popup');
    $('#btnMenuMobile')[0].click();
}

angular
    .module("leebank")
    .component("menuComponent", {
        templateUrl: "js/component/template/menu.html",
        controller: function (MenuService, GlobalService, DictionaryService) {
            var ctrl = this;

            // ---------- dictionary ---------- //

            this.currentLanguage = GlobalService.getQueryStringParam("lang") ?? "PT";
            this.dictionary = {};
            DictionaryService.getDictionary(this.currentLanguage).then(translations => {
                this.dictionary = translations.data;
            });

            // --------- menu action ---------- //

            this.menuAction = (link, value) => {

                if (link == "setLanguage") {
                    if (this.currentLanguage != value) {
                        window.location.href = `${window.location.href.split('?')[0]}?lang=${value}`;
                    }
                } else if (link != "#") {
                    // get the target anchor
                    var anchor = "";
                    if (link.indexOf("#") > -1) {
                        anchor = `#${link.split("#")[1]}`;
                        link = link.split("#")[0];
                    }
                    // redirect to the target link
                    window.location.href = `${link}?lang=${this.currentLanguage}${anchor}`;
                }
            };

            // ---------- menu tree ---------- //

            MenuService.getMenuTree(this.currentLanguage).then(function (menuTree) {
                ctrl.menu = menuTree.data.children;
            });

        }
    });
