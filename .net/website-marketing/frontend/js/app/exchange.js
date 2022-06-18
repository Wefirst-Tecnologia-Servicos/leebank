/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS service for the 'exchange' form
 */

angular
    .module("leebank")
    .service("ExchangeService", function ($http) {
        return {
            convert: function (conversionData) {
                return $http.post(`${angularConfig.apiBasePath}exchange/convert`, conversionData);
            }
        }
    });