/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS service for Menu
 */

angular
    .module("leebank")
    .service("DictionaryService", function ($http) {
        var apiBasePath = "http://201.30.147.96:3101/";
        return {
            getLanguages: function (languageID) {
                return $http.get(`${apiBasePath}dictionary/languages/${languageID}`);
            },
            getDictionary: function (languageID) {
                return $http.post(`${apiBasePath}dictionary`, {
                    Website: "LEE-MARKETING",
                    LanguageID: languageID
                });
            }
        }
    });