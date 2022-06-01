'use strict';

module.exports = {

    getRates: baseCurrency => {
        const https = require('https');
        return new Promise((resolve, reject) => {
            https.get(`https://api.exchangerate.host/latest?base=${baseCurrency}`, res => {
                let data = [];
                res.on('data', chunk => {
                    data.push(chunk);
                });
                res.on('end', () => {
                    const body = Buffer.concat(data).toString();
                    resolve(JSON.parse(body).rates);
                });
                res.on('error', err => {
                    reject(err);
                });
            });
        });
    }
}