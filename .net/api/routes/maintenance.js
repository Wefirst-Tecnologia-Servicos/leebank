const express = require("express");
const router = express.Router();
const service = require("../../middleware/service/maintenance-service");

router.get("/maintenance/datasets/reset", (request, response) => {
    try {
        service.resetDatasets();
        response.status(200).send({ status: "OK"});
    } catch (error) {
        console.log(error);
        response.status(500).send('Internal Server Error');
    }
});

module.exports = router;