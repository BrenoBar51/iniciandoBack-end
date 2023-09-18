--Selecionar o banco de dados--
USE db_escola;

--Criar uma tabela--
CREATE TABLE IF NOT EXISTS tb_aluno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(11) NOT NULL,
    data_nascimento DATE NOT NULL 
);

CREATE TABLE IF NOT EXISTS tb_professor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    novato BOOLEAN DEFAULT 1,
    nome VARCHAR(80) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(11) NOT NULL,
    data_nascimento DATE NOT NULL,
    linkedln VARCHAR(100)
);

--Excluir tabelas--
DROP TABLE tb_nome;

--Alterar tabela--

ALTER TABLE tb_professor DROP COLUMN data_nascimento;
ALTER TABLE tb_professor ADD COLUMN formacao VARCHAR(20);

--Comandos para consumir os dados--

--Inserir dados na tabela--
--lab--
INSERT INTO tb_lab (nome, cor, capacidade)
VALUE ('Mark', 'Verde', '32');
INSERT INTO tb_lab (nome, cor, capacidade)
VALUE ('Larry', 'Azul', '32');
INSERT INTO tb_lab (nome, cor, capacidade)
VALUE ('Jack', 'Roxa', '32');
INSERT INTO tb_lab (nome, cor, capacidade)
VALUE ('Elon Musk', 'Vermelha', '32');
INSERT INTO tb_lab (nome, cor, capacidade)
VALUE ('Bill Gates', 'Cinza', '32');
INSERT INTO tb_lab (nome, cor, capacidade)
VALUE ('Steve Jobs', 'Cinza', '32');
--Alunos--
INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUE ('Geraldin Zica Du Pantano', 'GzinduPantano@gmail.com', '8588988980', '1999-02-03');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUE ('Manoel Gomes', 'manelgomi@gmail.com', '117787799', '1970-02-03');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUE ('Kid Bengala', 'bengaladelicious@gmail.com', '88988888889', '1960-02-03');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUE ('Tigresa VIP', 'AIDS2atualizado@gmail.com', '9288977980', '1980-02-03');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUE ('Jailsson Mendes', 'JaJAOCO@gmail.com', '1688944980', '1987-02-03');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUE ('Faustão Gordo', 'Tamanhoextraggggg@gmail.com', '8887654321', '1977-02-03');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUE ('Talyson Loucuras', 'Thales@gaymail.com', '8588988981', '2002-02-03');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUE ('Geraldo Luis', 'GLuau@gmail.com', '8588989980', '2005-02-03');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUE ('Zeca Palgordinho', 'Zgordin@gmail.com', '8566988980', '1899-02-03');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUE ('Peter Aqui', 'Picaqui@gmail.com', '8588989980', '1000-01-01');
--Buscar "todos os dados de todos os labs"--
SELECT * FROM tb_lab;

--Para Buscar "apenas alguns dados de todos os dados"--
SELECT nome, capacidade FROM tb_lab;

SELECT nome FROM tb_aluno WHERE data_nascimento >= '2000-01-01'
AND data_nascimento <= '2002-12-31';

--Para buscar "todos os dados de labs especificos"--
SELECT * FROM tb_lab WHERE capacidade=20;



UPDATE tb_lab SET nome = 'Steve' WHERE id=2;

DELETE FROM tb_aluno WHERE id=3;