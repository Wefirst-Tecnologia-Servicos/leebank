'use strict';

const helper = require("./dao-helper");
const _tableName = "DICTIONARY";

module.exports = {
    getAll: () => {
        return new Promise((resolve, reject) => {
            helper.getLoadedDataset(_tableName).then(dataset => {
                resolve(dataset.rows);
            });
        });
    },
    getLanguages: () => {
        return new Promise((resolve, reject) => {
            helper.getLoadedDataset(_tableName).then(dataset => {
                var ignoredFields = ["dictionaryid"];
                var languageCodes = [];
                for (var i = 0; i < dataset.fields.length; i++) {
                    if (ignoredFields.indexOf(dataset.fields[i].name) < 0) {
                        languageCodes.push(dataset.fields[i].name.toUpperCase());
                    }
                };
                resolve(languageCodes);
            });
        });
    },
    updateDictionary: (key, languageCode, newDescription) => {
        return helper.runCommand(`UPDATE DICTIONARY SET ${languageCode} = '${newDescription}' WHERE DICTIONARYID = '${key}';`)
    }
};