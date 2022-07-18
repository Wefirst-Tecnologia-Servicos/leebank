﻿/**
 * @license WeFirst
 * @description
 * Provides the AngularJS footer component
 */

angular
    .module("leebank")
    .component("footerComponent", {
        templateUrl: "js/component/template/footer.html",
        controller: function (DictionaryService, GlobalService) {

            var ctrl = this;

            this.currentLanguage = GlobalService.getQueryStringParam("lang") ?? "PT";

            DictionaryService.getDictionary(GlobalService.getQueryStringParam("lang") ?? "PT").then(function(translations) {
                ctrl.dictionary = translations.data;
            });
        }
    });