const AWS = require("aws-sdk");
const app = require('/opt/nodejs/config/server.js');

exports.handler = (event, context, callback) => {

    var dadosForm = JSON.parse(event['body']);

    var conexao = app.opt.nodejs.config.conMysql('162.241.3.26','leebank_leelearning','@Leele#22','leebank_leelearning');
    var ArtigosModel = new app.opt.nodejs.models.artigosDB(conexao);

    var response;

    ArtigosModel.getArtigo(dadosForm,(error,result)=>{
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


