const config = require("./config.json");
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const swaggerUi = require('swagger-ui-express');
const swaggerFile = require('./swagger/swagger_output.json');

const menuRoutes = require('./routes/menu');
const translationRoutes = require('./routes/dictionary');
const doubtsRoutes = require('./routes/doubts');

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

app.use('/swagger', swaggerUi.serve, swaggerUi.setup(swaggerFile));
app.use(express.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use('/', menuRoutes);
app.use('/', translationRoutes);
app.use('/', doubtsRoutes);

app.listen(config.http.port, () => {
    console.log(`Server is listening on PORT ${config.http.port}...`);
});