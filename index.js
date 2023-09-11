//biblioteca do node para gerenciamento de requests e responses
const http = require('http');
const produto = require('./produto');
const cliente = require('./cliente');

//produto.cadastrar();
//cliente.cadastrar();

function recepcao(req, res){
    if(req.url === '/clientes'){
        res.end('Listando clientes');
    }
    else if(req.url === '/produtos'){
        res.end('Listando produtos');
    }
    else{
        res.end('Ola mundo');
    }
}

http.createServer(recepcao).listen(8001);