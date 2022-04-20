/**
 * @license WeFirst
 * @description
 * Provides the AngularJS footer component
 */

angular
    .module("leebank")
    .component("footerComponent", {
        templateUrl: "js/component/template/footer.html",
        controller: function (DictionaryService, GlobalService) {
            DictionaryService.getDictionary(GlobalService.getQueryStringParam("lang") ?? "PT").then(translations => {
                this.dictionary = translations.data;
            });
        }
    });