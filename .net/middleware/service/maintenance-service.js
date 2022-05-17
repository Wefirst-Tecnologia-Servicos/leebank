'use strict';

const fs = require('fs');
const config = require('./config.json');
const dao = require('../integration/dao-helper');

module.exports = {

    runScriptFile: filePath => {

        console.log(`Reading [${filePath}]...`);

        var lines = fs.readFileSync(filePath, 'utf-8').split(/\r?\n/);

        const processNextCommand = callback => {
            if (lines.length > 0) {
                lines[0] = lines[0].trim();
                if (lines[0] != "") {
                    dao.runCommand(lines[0]).then(rowCount => {
                        console.log(`\n ${lines[0]}`)
                        console.log(`${rowCount} rows affected.`)
                        lines.splice(0, 1);
                        processNextCommand(callback);
                    }).catch(err => {
                        callback(err);
                    });
                } else {
                    lines.splice(0, 1);
                    processNextCommand(callback);
                }
            } else {
                callback();
            }
        }

        return new Promise((resolve, reject) => {
            processNextCommand(err => {
                if (err) {
                    reject(err);
                } else {
                    resolve();
                }
            });
        });

    },
    resetDatasets: () => {
        dao.resetDatasets();
    }
};