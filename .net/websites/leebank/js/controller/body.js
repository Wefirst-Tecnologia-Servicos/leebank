angular.module('leebank')
    .controller('BodyController', (GlobalService, DictionaryService, EMailService, ExchangeService, $scope, $locale) => {

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
            Description: "",
        };

        $scope.sendDoubts = () => {
            $scope.doubts.MailType = "doubts";
            EMailService.send($scope.doubts).then(() => {
                $scope.doubts = {
                    SenderName: "",
                    SenderEMail: "",
                    Description: "",
                };
            });
        };

        // ---------- Exchange Legal Person Form ------------ //

        $scope.legalPersonContact = {
            SenderName: "",
            Cnpj: "",
            SenderEMail: "",
            Company: "",
            Description: "",
        };

        $scope.sendLegalPersonContact = () => {
            $scope.legalPersonContact.MailType = "exchange-legalperson";
            EMailService.send($scope.legalPersonContact).then(() => {
                $scope.legalPersonContact = {
                    SenderName: "",
                    Cnpj: "",
                    SenderEMail: "",
                    Company: "",
                    Description: "",
                };
            });
        };

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
        };

        // -------------- Exchange Conversion --------------- //
        
        $scope.currency = {
            PT: { symbol: '\u0024', name: 'PT', config: { group: '.', decimal: ',', indentation: ' ' } },
            EN: { symbol: '\u0024', name: 'EN', config: { indentation: ' ' } },
            ZH: { symbol: '\u0024', name: 'ZH', config: { indentation: ' ' } }
        }[$scope.currentLanguage];

        $scope.exchangeConversion = {
            SendingPage: {
                FromCurrency: "BRL",
                FromValue: 1.0,
                ToCurrency: "USD",
                ToValue: 0.0
            },
            ReceivingPage: {
                FromCurrency: "USD",
                FromValue: 1.0,
                ToCurrency: "BRL",
                ToValue: 0.0
            },
            Factors: {
                IOF: 0.38,
                Spread: 0.03,
                Costs: 0.05
            },
            SendingPageInput: 0.0,
            SendingPageOutput: 0.0,
            ReceivingPageInput: 0.0,
            ReceivingPageOutput: 0.0
        };

        // calculate the exchange conversion between the inputs
        $scope.exchangeCalculate = (selectedPage, selectedInput) => {
            // get the typed value
            var exchangeInput = $scope.exchangeConversion[`${selectedPage}${selectedInput}`];
            // get the result field selector
            var exchangeOutput = `${selectedPage}${(selectedInput == "Input" ? "Output" : "Input")}`;
            // get the exchange conversion factor
            var exchangeFactor = selectedInput == "Input" ? selectedPage : (selectedInput == "SendingPage" ? "ReceivingPage" : "SendingPage");
            exchangeFactor = $scope.exchangeConversion[exchangeFactor].ToValue;
            // calculates the result
            var result = exchangeInput * exchangeFactor;
            $scope.exchangeConversion[exchangeOutput] = result == undefined || isNaN(result) ? 0.0 : result;
        };

        $scope.convertCurrency = selectedPage => {
            ExchangeService.convert($scope.exchangeConversion[selectedPage]).then(result => {
                $scope.exchangeConversion[selectedPage] = result.data;
            });
        };

        if (window.location.href.indexOf("exchange-natural-person.html") > -1) {
            $scope.convertCurrency("SendingPage");
            $scope.convertCurrency("ReceivingPage");
        }

        // ---------------------- Popup --------------------- //

        $scope.PopupVisible = false;

        $scope.openPopup = () => {
            $scope.PopupVisible = true;
        };

        $scope.closePopup = () => {
            $scope.PopupVisible = false;
        };
    });