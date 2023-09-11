//biblioteca do node para gerenciamento de requests e responses
const http = require('http');
const produto = require('./produto');
const cliente = require('./cliente');

//produto.cadastrar();
//cliente.cadastrar();

function recepcao(req, res){
    res.end('Ola mundo');
}

http.createServer().listen(8000);