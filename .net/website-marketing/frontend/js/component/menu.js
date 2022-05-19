/**
 * @license WeFirst
 * @description
 * Provides the AngularJS menu component
 */

angular
    .module("leebank")
    .component("menuComponent", {
        templateUrl: "js/component/template/menu.html",
        controller: function (MenuService, GlobalService) {
            var ctrl = this;

            this.currentLanguage = GlobalService.getQueryStringParam("lang") ?? "PT";

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

            MenuService.getMenuTree(this.currentLanguage).then(function (menuTree) {
                ctrl.menu = menuTree.data.children;
            });
        }
    });
