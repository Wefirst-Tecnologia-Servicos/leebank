/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS service for Menu
 */

angular
    .module("leebank")
    .service("MenuService", function ($http) {
        var apiBasePath = "http://localhost:3000/";
        return {
            getMenuTree: languageID => {
                return $http.get(`${apiBasePath}menu/${languageID}`);
            }
        }
    });