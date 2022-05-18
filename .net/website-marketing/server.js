'use strict';

const config = require("./config.json");

var express = require('express'),
    app = express();

app.use('/', express.static(`${__dirname}/frontend`));
app.get('/', function (req, res) {
    res.sendfile(`${__dirname}/frontend/index.html`);
});

app.listen(config.http.port, config.http.host, () => {
    console.log(config.trace.displayMessage.replace("{host}", config.http.host).replace("{port}", config.http.port));
});