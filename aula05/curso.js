const express = require('express');

const router = express.Router();

router.get('/cursos', (req, res) => {
    res.send(['FullStack', 'Node', 'Java']);
});

router.post('/cursos', (req, res) => {
    res.send({
        msg:"Pronto"
    })
});

router.patch('/cursos', (req, res) => {
    res.send({
        msg:"Pronto, editar"
    })
});

router.delete('/cursos', (req, res) => {
    res.send({
        msg:"Pronto, deletar"
    })
});

module.exports = router;