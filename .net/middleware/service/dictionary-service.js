'use strict';

const dao = require('../integration/dictionary-dao');

const getAll = languageID => {
    return new Promise((resolve, reject) => {
        dao.getAll().then(dictionary => {
            var result = {};
            for (var i = 0; i < dictionary.length; i++) {
                result[dictionary[i].dictionaryid.trim()] = dictionary[i][languageID.toLowerCase()];
            }
            resolve(result);
        });
    });
};

module.exports = {

    getLanguages: languageID => {
        return new Promise((resolve, reject) => {
            getAll(languageID).then(dictionary => {
                dao.getLanguages().then(languageCodes => {
                    var result = {};
                    for (var i = 0; i < languageCodes.length; i++) {
                        result[languageCodes[i]] = dictionary[languageCodes[i]];
                    }
                    resolve(result);
                });
            });
        });
    },
    getAll: getAll,
    updateDictionary: (key, languageCode, newDescription) => {
        return dao.updateDictionary(key, languageCode, newDescription);
    }
};