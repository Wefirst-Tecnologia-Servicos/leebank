/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS LeeBank services
 */
/**
 * @license WeFirst
 * @description
 * This module provides an AngularJS LeeBank services
 */
const angularConfig = {
    //apiBasePath: "https://leebank.wefirst.link/"
    apiBasePath: "http://18.206.228.123:3000/"
};

angular
    .module("leebank", [])
    .constant("MODULE_VERSION", "2.1.0")
    .config($httpProvider => {
        $httpProvider.defaults.transformRequest.push((data, headersGetter) => {
            $("body").addClass("loading");
            return data;
        });

        $httpProvider.defaults.transformResponse.push((data, headersGetter) => {
            setTimeout(() => { $("body").removeClass("loading"); }, 50);
            return data;
        });

    })
    .service("GlobalService", function ($http) {
        return {
            getQueryStringParam: function (paramName) {
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
    })
    .directive('onFinishRender', function ($timeout) {
        return {
            restrict: 'A',
            link: function (scope, element, attr) {
                if (scope.$last === true) {
                    $timeout(function () {
                        scope.$emit('ngRepeatFinished');
                    });
                }
            }
        }
    });