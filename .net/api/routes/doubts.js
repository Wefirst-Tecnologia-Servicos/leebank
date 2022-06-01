const express = require("express");
const router = express.Router();
const service = require("../../middleware/service/doubts-service");

router.post("/doubts", (request, response) => {
    try {

        const doubtsModel = {
            WebSite: request.body.WebSite,
            SenderName: request.body.SenderName,
            SenderEMail: request.body.SenderEMail,
            Description: request.body.Description
        };

        if (!doubtsModel.SenderName || !doubtsModel.SenderEMail || !doubtsModel.Description || !doubtsModel.WebSite) {
            response.status(400).send('Incorrect Parameters');
        } else {
            service.send(doubtsModel).then(() => {
                response.status(200).send('{ "status": "OK" }');
            }).catch(err => {
                try {
                    response.status(400).send(err.response.body.errors);
                } catch (error) {
                    console.log(error);
                    response.status(500).send('Internal Server Error');
                }
            });
        }
    } catch (error) {
        console.log(error);
        response.status(500).send('Internal Server Error');
    }
});

module.exports = router;