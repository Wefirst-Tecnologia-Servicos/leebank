﻿angular.module('leebank')
    .controller('BodyController', (GlobalService, DictionaryService, DoubtsService, $scope) => {

        $scope.currentLanguage = GlobalService.getQueryStringParam("lang") ?? "PT";

        DictionaryService.getDictionary($scope.currentLanguage).then(translations => {
            $scope.dictionary = translations.data;

            var allElements = document.getElementsByTagName('*');
            for (var i = 0, n = allElements.length; i < n; i++) {
                var attr = allElements[i].getAttribute("ng-placeholder");
                if (attr != null) {
                    allElements[i].setAttribute("placeholder", $scope.dictionary[attr]);
                }
            }

            $scope.$on('ngRepeatFinished', function (ngRepeatFinishedEvent) {
                $("body").removeClass("loading");
            });
        });

        $scope.doubts = {
            SenderName: "",
            SenderEMail: "",
            Description: "",
        }

        $scope.sendDoubts = () => {
            console.log($scope.doubts);
            DoubtsService.send($scope.doubts).then(() => {
                $scope.doubts = {
                    SenderName: "",
                    SenderEMail: "",
                    Description: "",
                };
            });
        }

        $scope.redirectTo = link => {
            var currentLanguage = GlobalService.getQueryStringParam("lang") ?? "PT";
            // get the target anchor
            var anchor = "";
            if (link.indexOf("#") > -1) {
                anchor = `#${link.split("#")[1]}`;
                link = link.split("#")[0];
            }
            // redirect to the target link
            window.location.href = `${link}?lang=${currentLanguage}${anchor}`;
        }
    });