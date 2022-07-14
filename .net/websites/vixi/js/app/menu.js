/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS service for Menu
 */

angular
    .module("leebank")
    .service("MenuService", function ($http) {
        return {
            getMenuTree: languageID => {
                return $http.post(`${angularConfig.apiBasePath}menu/`, {
                    Website: "VIXI",
                    LanguageID: languageID
                });
            }
        }
    });