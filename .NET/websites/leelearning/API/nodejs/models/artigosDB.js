//Permite a abertura da conexão apenas quando necessário
function Artigo(conexao){
    this._con = conexao;
}

//Seleciona todos os Artigos
Artigo.prototype.getArtigos = function(callback){
    this._con.query('select * from article order by articleid asc',callback);
}
//Seleciona um Artigo específico
Artigo.prototype.getArtigo = function(artigo,callback){
    this._con.query("select * from article where articleid = '" + artigo + "'",callback);
}
//Seleciona todos os Artigos
Artigo.prototype.getArtigosFull = function(callback){
    this._con.query('select a.articleid, a.title, a.subtitle, a.theme, a.content, a.image, a.articleDate, a.author, a.createdon, a.modifiedon, b.topic from article as a LEFT JOIN articletopic as b on a.articleid = b.articleid order by articleid asc',callback);
}
//Seleciona um Artigo específico
Artigo.prototype.getArtigoFull = function(artigo,callback){
    this._con.query("select a.articleid, a.title, a.subtitle, a.theme, a.content, a.image, a.articleDate, a.author, a.createdon, a.modifiedon, b.topic from article as a LEFT JOIN articletopic as b on a.articleid = b.articleid where a.articleid = '" + artigo + "'",callback);
}
//Seleciona um Artigo específico
Artigo.prototype.filterArtigoFull = function(filtro,callback){
    this._con.query("select a.articleid, a.title, a.subtitle, a.theme, a.content, a.image, a.articleDate, a.author, a.createdon, a.modifiedon, b.topic from article as a LEFT JOIN articletopic as b on a.articleid = b.articleid " + filtro + " order by a.articleid asc", callback);
}

//Realiza o insert
Artigo.prototype.insertArtigo = function(artigo, callback){
    this._con.query("insert into article set ?",artigo,callback);
}
//Realiza o insert
Artigo.prototype.insertArtigoFull = function(artigo, callback){
    this._con.query("insert into article set ?; insert into articletopic (`articleid`, `topic`, `createdby`, `cratedon`, `modifiedby`, `modifiedon`) VALUES ?;",[artigo.artigo,artigo.topico],callback);
}

//Realiza o update
Artigo.prototype.updateArtigo = function(artigo,callback){
    this._con.query("update article set ?  where articleid = '" + artigo.articleid + "'", artigo.dados,callback);
}
//Realiza o update da senha
Artigo.prototype.updateArtigoTopico = function(artigo,callback){
    this._con.query("delete from articletopic  where articleid = '" + artigo.articleid + "'; insert into articletopic (`articleid`, `topic`, `createdby`, `cratedon`, `modifiedby`, `modifiedon`) VALUES ?;", [artigo.topico],callback);
}


//Realiza o delete
Artigo.prototype.deleteArtigo = function(artigo,callback){
    this._con.query("delete from article where articleid = '" + artigo + "'",callback);
}


//Exporta a classe Equipamneto
module.exports = ()=>{
    return Artigo;
}

