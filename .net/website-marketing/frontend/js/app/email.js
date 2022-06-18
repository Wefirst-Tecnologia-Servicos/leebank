/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS service for e-mail sending
 */

angular
    .module("leebank")
    .service("EMailService", function ($http) {
        return {
            send: function (emailData) {
                emailData.WebSite = "LEE-MARKETING";
                return $http.post(`${angularConfig.apiBasePath}email`, emailData);
            }
        }
    });