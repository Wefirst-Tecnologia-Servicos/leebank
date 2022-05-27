/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS service for Menu
 */

angular
    .module("leebank")
    .service("MenuService", function ($http) {
        var apiBasePath = "http://201.30.147.96:3101/";
        return {
            getMenuTree: languageID => {
                return $http.post(`${apiBasePath}menu/`, {
                    Website: "VIXI",
                    LanguageID: languageID
                });
            }
        }
    });