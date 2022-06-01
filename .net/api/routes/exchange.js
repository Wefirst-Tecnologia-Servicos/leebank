const express = require("express");
const router = express.Router();
const service = require("../../middleware/service/exchange-service");

router.post("/exchange/rates/:baseCurrency", (request, response) => {
    try {
        const baseCurrency = request.params["baseCurrency"];
        if (!baseCurrency) {
            response.status(400).send('Missing parameters. You must send baseCurrency.');
        } else {
            service.getRates(baseCurrency).then(rates => {
                response.status(200).send(rates);
            }).catch(error => {
                console.log(error);
                response.status(500).send('Internal Server Error');
            });
        }
    } catch (error) {
        console.log(error);
        response.status(500).send('Internal Server Error');
    }
});

module.exports = router;