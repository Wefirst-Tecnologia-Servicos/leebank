/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS service for the 'doubts' form
 */

angular
    .module("leebank")
    .service("EMailService", function ($http) {
        return {
            send: emailData => {
                emailData.WebSite = "VIXI";
                return $http.post(`${angularConfig.apiBasePath}email`, emailData);
            }
        }
    });