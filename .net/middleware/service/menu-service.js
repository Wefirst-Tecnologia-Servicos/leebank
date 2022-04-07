'use strict';

const dao = require('../integration/menu-dao');
const translation = require("./dictionary-service");

module.exports = {

    // builds the treeview menu
    getTreeView: languageID => {

        return new Promise((resolve, reject) => {

            dao.getAll().then(menuData => {

                translation.getAll(languageID).then(translations => {

                    // translate all menu
                    for (var i = 0; i < menuData.length; i++) {
                        menuData[i].translated_text = translations[menuData[i].text];
                        menuData[i].translated_header = translations[menuData[i].header];
                    }

                    // recursive function to load children
                    var loadChildrenMenu = rootMenuItem => {
                        rootMenuItem.children = [];
                        for (var i = 0; i < menuData.length; i++) {
                            if (menuData[i].fathermenuid == rootMenuItem.menuid) {
                                rootMenuItem.children.push(menuData[i]);
                                loadChildrenMenu(menuData[i]);
                            }
                        }
                    };

                    // returns the full treeView
                    var treeView = { menuid: null };
                    loadChildrenMenu(treeView)
                    resolve(treeView);
                });
            });
        });
    }
};
