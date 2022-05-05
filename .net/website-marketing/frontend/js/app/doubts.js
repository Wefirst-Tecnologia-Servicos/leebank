/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS service for the 'doubts' form
 */

angular
    .module("leebank")
    .service("DoubtsService", function ($http) {
        var apiBasePath = "http://201.30.147.96:3001/";
        return {
            send: doubtsData => {
                return $http.post(`${apiBasePath}doubts`, doubtsData);
            }
        }
    });