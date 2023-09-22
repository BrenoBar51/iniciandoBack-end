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
VALUE ('Mark', 'Verde', '10');
INSERT INTO tb_lab (nome, cor, capacidade)
VALUE ('Larry', 'Azul', '32');
INSERT INTO tb_lab (nome, cor, capacidade)
VALUE ('Jack', 'Roxa', '20');
INSERT INTO tb_lab (nome, cor, capacidade)
VALUE ('Elon Musk', 'Vermelha', '18');
INSERT INTO tb_lab (nome, cor, capacidade)
VALUE ('Bill Gates', 'Cinza', '28');
INSERT INTO tb_lab (nome, cor, capacidade)
VALUE ('Steve Jobs', 'Cinza', '15');
--Alunos--
INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUE 
 ('Geraldin Zica Du Pantano', 'GzinduPantano@gmail.com', '8588988980', '1999-02-03'),
 ('Manoel Gomes', 'manelgomi@gmail.com', '117787799', '1970-02-03'),
 ('Kid Bengala', 'bengaladelicious@gmail.com', '88988888889', '1960-02-03'),
 ('Tigresa VIP', 'AIDS2atualizado@gmail.com', '9288977980', '1980-02-03'),
 ('Jailsson Mendes', 'JaJAOCO@gmail.com', '1688944980', '1987-02-03'),
 ('Faustão Gordo', 'Tamanhoextraggggg@gmail.com', '8887654321', '1977-02-03'),
 ('Talyson Loucuras', 'Thales@gaymail.com', '8588988981', '2002-02-03'),
 ('Geraldo Luis', 'GLuau@gmail.com', '8588989980', '2005-02-03'),
 ('Zeca Palgordinho', 'Zgordin@gmail.com', '8566988980', '1899-02-03'),
 ('Peter Aqui', 'Picaqui@gmail.com', '8588989980', '1000-01-01');

 --Professores--
 INSERT INTO tb_professor (novato, nome, email, telefone, data_nascimento, linkedln )
    VALUE 
        ('2', 'Ale Capoeira', 'phpinga@gmail.com', '85988221133', '1985-04-08', 'https://www.linkedin.com/in/alephpvive/'),
        ('1', 'Iberê Tenorio', 'manualdomundo@gmail.com', '85988441133', '1988-09-06', 'https://www.linkedin.com/in/ibererafael/'),
        ('2', 'Nando Moura', 'meprocessaaivai@gmail.com', '85988221199', '1987-05-22', 'https://www.linkedin.com/in/mestredosprocessos/'),
        ('2', 'Alexandre Frota', 'comiodecima@gmail.com', '11988551133', '1979-10-29', 'https://www.linkedin.com/in/frotachangeteam/'),
        ('1', 'Mango Joe', 'aizedamanga@gmail.com', '85988773344', '2000-05-07', 'https://www.linkedin.com/in/mangojoe/');
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
--gambiarras por preguiça--
UPDATE tb_aluno SET id = 3 WHERE id=4;
UPDATE tb_aluno SET id = 4 WHERE id=5;
UPDATE tb_aluno SET id = 5 WHERE id=6;
UPDATE tb_aluno SET id = 6 WHERE id=7;
UPDATE tb_aluno SET id = 7 WHERE id=8;
UPDATE tb_aluno SET id = 8 WHERE id=9;
UPDATE tb_aluno SET id = 9 WHERE id=10;
UPDATE tb_aluno SET id = 10 WHERE id=11;