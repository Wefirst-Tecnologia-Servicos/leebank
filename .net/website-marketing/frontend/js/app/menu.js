/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS service for Menu
 */

angular
    .module("leebank")
    .service("MenuService", function ($http) {
        var apiBasePath = "http://201.30.147.96:3001/";
        return {
            getMenuTree: function (languageID) {
                return $http.post(`${apiBasePath}menu/`, {
                    Website: "LEE-MARKETING",
                    LanguageID: languageID
                });
            }
        }
    });