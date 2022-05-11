'use strict';

const config = require('./config.json');
const email = require('../common/email-helper');

module.exports = {
    send: doubtsModel => {

        var subject = config.doubsEMail.template.subject;
        var text = config.doubsEMail.template.text;
        var html = config.doubsEMail.template.html;

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
            config.doubsEMail.sendGrid.apiKey,
            config.doubsEMail.sendGrid.sender,
            config.doubsEMail.sendGrid.recipient,
            subject, text, html);
    }
};