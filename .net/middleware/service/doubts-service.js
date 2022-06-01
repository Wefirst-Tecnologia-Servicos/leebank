'use strict';

const config = require('./config.json');
const email = require('../common/email-helper');

module.exports = {
    send: doubtsModel => {

        var subject = config.doubsEMail[doubtsModel.WebSite].template.subject;
        var text = config.doubsEMail[doubtsModel.WebSite].template.text;
        var html = config.doubsEMail[doubtsModel.WebSite].template.html;

        // binds the model data into the template e-mail data
        for (var k in doubtsModel) {
            while (subject.indexOf(`${k}`) > -1) {
                subject = subject.replace(`${k}`, doubtsModel[k]);
            }
            while (text.indexOf(`${k}`) > -1) {
                text = text.replace(`${k}`, doubtsModel[k]);
            }
            while (html.indexOf(`${k}`) > -1) {
                html = html.replace(`${k}`, doubtsModel[k]);
            }
        }

        // sends the e-mail
        return email.send(
            config.doubsEMail[doubtsModel.WebSite].sendGrid.apiKey,
            config.doubsEMail[doubtsModel.WebSite].sendGrid.sender,
            config.doubsEMail[doubtsModel.WebSite].sendGrid.recipient,
            subject, text, html);
    }
};