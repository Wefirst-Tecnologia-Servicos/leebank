/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS service for Menu
 */

angular
    .module("leebank")
    .service("DictionaryService", function ($http) {
        var apiBasePath = "http://localhost:3000/";
        return {
            getLanguages: languageID => {
                return $http.get(`${apiBasePath}dictionary/languages/${languageID}`);
            },
            getDictionary: languageID => {
                return $http.get(`${apiBasePath}dictionary/${languageID}`);
            }
        }
    });