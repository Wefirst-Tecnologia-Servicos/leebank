/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS LeeBank services
 */
angular
    .module("leebank", [])
    .constant("MODULE_VERSION", "2.0.0")
    .service("GlobalService", function ($http) {
        return {
            getQueryStringParam: paramName => {
                var result = null;
                if (window.location.href.indexOf("?") > -1) {
                    result = "&" + window.location.href.split("?")[1].replace("#", "&");
                    paramName = "&" + paramName;
                    if (result.indexOf(paramName) > -1) {
                        result = decodeURIComponent(result.split(paramName)[1].split("&")[0].substr(1));
                    } else {
                        result = null;
                    }
                }
                return result;
            }
        }
    });