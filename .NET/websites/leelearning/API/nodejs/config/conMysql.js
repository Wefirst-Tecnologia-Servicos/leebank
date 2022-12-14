var mysql = require('mysql2');

//função para gerar conexão
var conMySql = function(host,user,password = '',db){
    var connection = mysql.createConnection({host : host, user : user, password : password, database : db,multipleStatements: true});
    return connection;
}

//Exporta a função sem ser executada para evitar a abertura desnecessária do banco
module.exports = function(){
    return conMySql;
}