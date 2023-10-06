const express = require('express');
const alunoRouter = require('./aluno');
const cursoRouter = require('./curso');
const professorRouter = require('./professor');

const app = express();

app.use(alunoRouter);
app.use(cursoRouter);
app.use(professorRouter);

app.listen(8001);