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
            ReceivingPageInput: 0.0
        };

        $scope.exchangeConvert = selectedPage => {
            var convertedValue = $scope.exchangeConversion[`${selectedPage}Input`] * $scope.exchangeConversion[selectedPage].ToValue;
            return {
                Exchange: convertedValue,
                Taxes: convertedValue * (1 + $scope.exchangeConversion.Factors.Spread + $scope.exchangeConversion.Factors.Costs + $scope.exchangeConversion.Factors.IOF),
                Costs: convertedValue * $scope.exchangeConversion.Factors.Costs
            }
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