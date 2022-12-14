//Carregando os módulos express e consign
const express = require('express');
const consign = require('consign');
const cors = require('cors')

//inicia o express
var app = express();

//Configura CORS
app.use(cors());

//Configuração de middlewares e outras configurações
app.use(express.json());

app.use(express.urlencoded({ extended: true}))

//Carrega as pastas dentro do app (express)
consign()
	.then('../../opt/nodejs/models')
	.then('../../opt/nodejs/config/conMysql.js')
	.into(app);

module.exports = app;