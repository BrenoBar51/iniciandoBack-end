//biblioteca do node para gerenciamento de requests e responses
const http = require('http');
const produto = require('./produto');
const cliente = require('./cliente');

//produto.cadastrar();
//cliente.cadastrar();

function recepcao(req, res){
    if(req.url === '/clientes'){
        res.end(cliente.listar());
        return;
    }//insomnia rest

    if(req.url === '/produtos'){
        res.end(produto.listar());
        return;
    }
    res.end('Erro 404');
}

http.createServer(recepcao).listen(8000);