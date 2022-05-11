'use strict';

const config = require("./config.json");
const { Client } = require('pg');
const connectionString = config.database.connectionString;

var _loadedDatasets = {}; // singleton implementation

module.exports = {
    getLoadedDataset: tableName => {
        return new Promise((resolve, reject) => {
            if (_loadedDatasets[tableName]) {
                resolve(_loadedDatasets[tableName]);
            } else {
                var client = new Client({ connectionString });
                client.connect(err => {
                    if (err) {
                        console.log(err);
                    }
                });
                client.query(`SELECT * FROM ${tableName};`, (err, res) => {
                    if (err) {
                        reject(err);
                    } else {
                        _loadedDatasets[tableName] = res;
                        resolve(_loadedDatasets[tableName]);
                    }
                    client.end();
                });
            }
        });
    },
    runCommand: sqlCommand => {
        return new Promise((resolve, reject) => {
            var client = new Client({ connectionString });
            client.connect(err => {
                if (err) {
                    console.log(err);
                }
            });
            client.query(sqlCommand, (err, res) => {
                if (err) {
                    reject(err);
                } else {
                    resolve(res.rowCount);
                }
                client.end();
            });
        });
    },
    resetDatasets: () => {
        _loadedDatasets = {};
    }
};