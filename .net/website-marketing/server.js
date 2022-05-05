'use strict';
var express = require('express'),
    app = express();

app.use('/', express.static(`${__dirname}/frontend`));
app.get('/', function (req, res) {
    res.sendfile(`${__dirname}/frontend/index.html`);
});

app.listen(3000);