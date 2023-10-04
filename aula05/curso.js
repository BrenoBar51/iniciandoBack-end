const express = require('express');

const router = express.Router();

router.get('/cursos', (req, res) => {
    res.send(['FullStack', 'Node', 'Java']);
});

router.get('/cursos/:id', (req, res) => {
    //select * from tb_alunos where id = req.params.id;
    res.send({
        id: req.params.id,
        nome: "FullSatck",
        cidade: "Fortaleza",
    })
});

router.post('/cursos', (req, res) => {
    res.send({
        msg:"Pronto"
    })
});

router.patch('/cursos/:id', (req, res) => {
    res.send({
        msg:"Pronto, editar"
    })
});

router.delete('/cursos/:id', (req, res) => {
    res.send({
        msg:"Pronto, deletar"
    })
});

module.exports = router;