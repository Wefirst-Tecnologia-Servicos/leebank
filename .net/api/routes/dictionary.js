const express = require("express");
const router = express.Router();
const service = require("../../middleware/service/dictionary-service");

router.get("/dictionary/languages/:languageID", (request, response) => {
    try {
        const languageID = request.params["languageID"];
        if (!languageID) {
            response.status(400).send('Missing parameters. You must send languageID.');
        } else {
            service.getLanguages(languageID).then((languages) => {
                response.status(200).send(languages);
            });
        }
    } catch (error) {
        console.log(error);
        response.status(500).send('Internal Server Error');
    }
});

router.post("/dictionary/save", (request, response) => {
    try {
        const dictionaryModel = {
            Key: request.body.Key,
            LanguageCode: request.body.LanguageCode,
            Description: request.body.Description
        };

        if (!dictionaryModel.Key || !dictionaryModel.LanguageCode || !dictionaryModel.Description) {
            response.status(400).send('Incorrect Parameters');
        }

        service.updateDictionary(dictionaryModel.Key, dictionaryModel.LanguageCode, dictionaryModel.Description).then((nRows) => {
            response.status(200).send({ status: "OK", rowsAffected: nRows });
        });
    } catch (error) {
        console.log(error);
        response.status(500).send('Internal Server Error');
    }
});

router.get("/dictionary/:languageID", (request, response) => {
    try {
        const languageID = request.params["languageID"];
        if (!languageID) {
            response.status(400).send('Missing parameters. You must send languageID.');
        } else {
            service.getAll(languageID).then((translations) => {
                response.status(200).send(translations);
            });
        }
    } catch (error) {
        console.log(error);
        response.status(500).send('Internal Server Error');
    }
});

module.exports = router;