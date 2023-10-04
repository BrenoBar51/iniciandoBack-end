const express = require('express');

//criando um direcionador para definir qual endpoint faz o que
const router = express.Router();

router.get('/alunos', (req, res) => {
    res.send(['Maria', 'José', 'Rita']);
});

router.get('/alunos/:id', (req, res) => {
    res.send({
        id: req.params.id,
        nome: "Chiquim",
        cidade: "Caucaia",
    })
});

router.post('/alunos', (req, res) => {
    res.send({
        msg:"Pronto"
    })
});

router.patch('/alunos/:id', (req, res) => {
    res.send({
        msg:"Pronto, editar"
    })
});

router.delete('/alunos/:id', (req, res) => {
    res.send({
        msg:"Pronto, deletar"
    })
});

module.exports = router;