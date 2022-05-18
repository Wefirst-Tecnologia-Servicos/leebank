'use strict';

const config = require("./config.json");
const mysql = require('mysql');

var _loadedDatasets = {}; // singleton implementation

module.exports = {
    getLoadedDataset: tableName => {
        return new Promise((resolve, reject) => {
            if (_loadedDatasets[tableName]) {
                resolve(_loadedDatasets[tableName]);
            } else {
                var client = mysql.createConnection(config.dbConnection.mySql);
                client.connect(err => {
                    if (err) {
                        console.log(err);
                        reject(err);
                    } else {
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
            }
        });
    },
    runCommand: sqlCommand => {
        return new Promise((resolve, reject) => {
            var client = mysql.createConnection(config.dbConnection.mySql);
            client.connect(err => {
                if (err) {
                    reject(err);
                } else {
                    client.query(sqlCommand, (err, res) => {
                        if (err) {
                            reject(err);
                        } else {
                            resolve(res.rowCount);
                        }
                        client.end();
                    });
                }
            });
        });
    },
    resetDatasets: () => {
        _loadedDatasets = {};
    }
};