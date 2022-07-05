/**
 * @license WeFirst
 * @description
 * Provides the AngularJS menu component
 */

angular
    .module("leebank")
    .component("menuComponent", {
        templateUrl: "js/component/template/menu.html",
        controller: function (MenuService, DictionaryService, GlobalService) {

            this.currentLanguage = GlobalService.getQueryStringParam("lang") ?? "PT";
            this.languages = {};
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

            MenuService.getMenuTree(this.currentLanguage).then(menuTree => {
                this.menu = menuTree.data.children;

                // translate the languages menu
                DictionaryService.getLanguages(this.currentLanguage).then(languages => {
                    this.languages = languages.data;
                    for (var i = 0; i < this.menu.length; i++) {
                        for (var j = 0; j < this.menu[i].children.length; j++) {
                            var child = this.menu[i].children[j];
                            if (this.languages[child.text]) {
                                child.translated_text = this.languages[child.text];
                            }
                        }
                    }
                });
            });
        }
    });
