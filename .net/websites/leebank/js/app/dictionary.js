/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS service for Menu
 */

angular
    .module("leebank")
    .service("DictionaryService", function ($http) {
        return {
            getLanguages: function (languageID) {
                return $http.get(`${angularConfig.apiBasePath}dictionary/languages/${languageID}`);
            },
            getDictionary: function (languageID) {
                return $http.post(`${angularConfig.apiBasePath}dictionary`, {
                    Website: "LEE-MARKETING",
                    LanguageID: languageID
                });
            }
        }
    });