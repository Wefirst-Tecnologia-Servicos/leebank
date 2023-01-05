const AWS = require("aws-sdk");
const app = require('/opt/nodejs/config/server.js');

exports.handler = (event, context, callback) => {

    var conexao = app.opt.nodejs.config.conMysql('162.241.3.26','leebank_leelearning','@Leele#22','leebank_leelearning');
    var TopicosModel = new app.opt.nodejs.models.topicosDB(conexao);

    var response;

    TopicosModel.getTopicos((error,result)=>{
        if(error){
            response = {
                statusCode: 400,
                body: JSON.stringify(error),
            };
        }else{
            response = {
                statusCode: 200,
                body: JSON.stringify(result),
            };
        }
        conexao.end();

        callback(null, response);
    });

};


