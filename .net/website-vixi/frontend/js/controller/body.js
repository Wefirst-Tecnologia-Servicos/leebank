angular.module('leebank')
    .controller('BodyController', (GlobalService, DictionaryService, EMailService, $scope) => {

        // --------------- Translation Engine --------------- //

        $scope.currentLanguage = GlobalService.getQueryStringParam("lang") ?? "PT";

        DictionaryService.getDictionary($scope.currentLanguage).then(translations => {
            $scope.dictionary = translations.data;

            var allElements = $('*[ng-placeholder]');
            for (var i = 0, n = allElements.length; i < n; i++) {
                $(allElements[i]).attr("placeholder", $scope.dictionary[$(allElements[i]).attr("ng-placeholder")]);
            }
        });

        // ------------------ Doubts Form ------------------- //

        $scope.doubts = {
            SenderName: "",
            SenderEMail: "",
            Phone: "",
            Cpf: "",
            Cnpj: ""
        }

        $scope.sendDoubts = () => {
            $scope.doubts.MailType = "doubts";
            EMailService.send({
                SenderName: $scope.doubts.SenderName,
                SenderEMail: $scope.doubts.SenderEMail,
                Description: `Telefone: ${$scope.doubts.Phone}\nCPF: ${$scope.doubts.Cpf}\nCNPJ: ${$scope.doubts.Cnpj}`
            }).then(() => {
                $scope.doubts = {
                    SenderName: "",
                    SenderEMail: "",
                    Phone: "",
                    Cpf: "",
                    Cnpj: ""
                };
            });
        }

        // ------------ Page Redirecting Engine ------------- //

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