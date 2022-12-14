//Permite a abertura da conexão apenas quando necessário
function Usuario(conexao){
    this._con = conexao;
}

//Seleciona todos os Usuarios
Usuario.prototype.getUsuarios = function(callback){
    this._con.query('select * from user order by username asc',callback);
}
//Seleciona um Usuario específico
Usuario.prototype.getUsuario = function(usu,callback){
    this._con.query("select * from user where username = '" + usu + "'",callback);
}
//Realiza o insert
Usuario.prototype.insertUsuario = function(Usuario, callback){
    this._con.query("insert into user set ?",Usuario,callback);
}
//Realiza o update
Usuario.prototype.updateUsuario = function(dadosForm,callback){
    this._con.query("update user set ?  where username = '" + dadosForm.username + "'", dadosForm,callback);
}
//Realiza o update da senha
Usuario.prototype.updateUsuarioPassword = function(dadosForm,callback){
    this._con.query("update user set ? where username = '" + dadosForm.username + "'",dadosForm.dados, callback);
}
//Realiza o delete
Usuario.prototype.deleteUsuario = function(usu,callback){
    this._con.query("delete from user where username = '" + usu + "'",callback);
}

//Realiza o Login
Usuario.prototype.login = function(dados,callback){
    this._con.query("select a.username, b.name, c.picture, c.personid ,c.actualGroup, c.status from user as a LEFT JOIN person as b on a.username = b.username LEFT JOIN persongroupperson as c on b.personid = c.personid where a.username = '" + dados.username + "' and a.password = '" + dados.password + "'",callback);
}

//Exporta a classe Equipamneto
module.exports = ()=>{
    return Usuario;
}

