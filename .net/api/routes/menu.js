'use strict';

const express = require("express");
const router = express.Router();
const service = require("../../middleware/service/menu-service");

router.get("/menu/:languageID", (request, response) => {

    try {
        const languageID = request.params["languageID"];
        if (!languageID) {
            response.status(400).send('Missing parameters. You must send languageID.');
        } else {
            service.getTreeView(languageID).then(menuTree => {
                response.status(200).send(menuTree);
            });
        }
    } catch (error) {
        console.log(error);
        response.status(500).send('Internal Server Error');
    }
});

module.exports = router;