//Permite a abertura da conexão apenas quando necessário
function Topico(conexao){
    this._con = conexao;
}

//Seleciona todos os Topicos
Topico.prototype.getTopicos = function(callback){
    this._con.query('select * from topic order by topic asc',callback);
}

//Realiza o insert
Topico.prototype.insertTopico = function(Topico, callback){
    this._con.query("insert into topic set ?",Topico,callback);
}


//Realiza o update
Topico.prototype.updateTopico = function(Topico,callback){
    this._con.query("update topic set ?  where topic = '" + Topico.topic + "'", Topico.dados,callback);
}


//Realiza o delete
Topico.prototype.deleteTopico = function(Topico,callback){
    this._con.query("delete from topic where topic = '" + Topico + "'",callback);
}


//Exporta a classe Equipamneto
module.exports = ()=>{
    return Topico;
}

