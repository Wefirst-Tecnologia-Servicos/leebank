const config = require("./config.json");

const fs = require('fs');
const http = require('http');
const https = require('https');
const privateKey  = fs.readFileSync('sslcert/key.pem', 'utf8');
const certificate = fs.readFileSync('sslcert/cert.pem', 'utf8');

const credentials = {key: privateKey, cert: certificate, passphrase: "password"};

const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const swaggerUi = require('swagger-ui-express');
const swaggerFile = require('./swagger/swagger_output.json');

const menuRoutes = require('./routes/menu');
const translationRoutes = require('./routes/dictionary');
const emailRoutes = require('./routes/email');
const exchangeRoutes = require('./routes/exchange');

const app = express();

app.use(cors((req, callback) => {
    var allowedOrigin = false;
    if (config.http.cors.allowedOrigins.indexOf("*") > -1) {
        allowedOrigin = true;
    } else {
        for (var i = 0; i < config.http.cors.allowedOrigins.length; i++) {
            if (config.http.cors.allowedOrigins[i] == req.header('Origin')) {
                allowedOrigin = true;
            }
        }
    }
    callback(null, { origin: allowedOrigin });
}));

app.use("/swagger", swaggerUi.serve, swaggerUi.setup(swaggerFile));
app.use(express.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use("/", menuRoutes);
app.use("/", translationRoutes);
app.use("/", emailRoutes);
app.use("/", exchangeRoutes);

var httpServer = http.createServer(app);
var httpsServer = https.createServer(credentials, app);

httpsServer.listen(config.http.port, config.http.host, () => {
    console.log("HTTPS: " + config.trace.displayMessage.replace("{host}", config.http.host).replace("{port}", config.http.port));
});

httpServer.listen(config.http.port + 100, config.http.host, () => {
    console.log("HTTP: " + config.trace.displayMessage.replace("{host}", config.http.host).replace("{port}", config.http.port + 100));
});