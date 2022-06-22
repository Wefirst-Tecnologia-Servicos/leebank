const express = require("express");
const router = express.Router();
const service = require("../../middleware/service/email-service");

router.post("/email", (request, response) => {
    try {

        var emailModel = {
            WebSite: request.body.WebSite,
            MailType: request.body.MailType
        };

        for (var k in request.body) {
            if (k.substr(0, 1) != "_") {
                emailModel[k] = request.body[k];
            }
        }

        if (!emailModel.WebSite || !emailModel.MailType) {
            response.status(400).send('Incorrect Parameters');
        } else {
            service.send(emailModel).then(() => {
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