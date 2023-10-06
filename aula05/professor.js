const express = require('express');
const router = express.Router();

router.get('/professores', (req, res) => {
    res.send(['Cabra', 'Caboclo', 'Ale capoeira']);
});

router.get('/professores/:id', (req, res) => {
    res.send({
        id: req.params.id,
        nome: "Ale capoeira",
        idade: 40,
    })
});

router.post('/professores', (req, res) => {
    res.send({
        msg: "Pronto"
    })
});

router.patch('/professores', (req, res) => {
    res.send({
        msg: "Pronto, editar"
    })
});

router.delete('/professores', (req, res) => {
    res.send({
        msg:"Deletado"
    })
});

module.exports = router;