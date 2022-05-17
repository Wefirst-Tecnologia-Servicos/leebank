'use strict';

const prompt = require('prompt');
const service = require("../middleware/service/maintenance-service");

prompt.start();

prompt.get(['filePath'], (err, result) => {
    if (err) {
        return err => {
            console.log("ERROR:");
            console.log(err);
            return 1;
        };

    }
    console.log("Processing...");

    service.runScriptFile(result.filePath).then(() => {
        prompt.get(['Process finished, press any key to exit...'], (err, result) => { });
    }).catch(err => {
        console.log(err);
        prompt.get(['Process finished, press any key to exit...'], (err, result) => { });
    });
});

