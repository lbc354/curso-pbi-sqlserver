CREATE DATABASE rh;
USE rh;

CREATE TABLE funcionarios(
		id INT IDENTITY(1,1) PRIMARY KEY,
		nome VARCHAR(255),
		sexo CHAR(1),
		endereco VARCHAR(255),
		salario DECIMAL(10,2)
);

INSERT INTO funcionarios(nome, sexo, endereco, salario)
VALUES ('lucas', 'm', 'taguatinga', 2100),
       ('isabela', 'f', 'taguatinga', 3200);

SELECT *--nome, salario AS [sal. mensal]
FROM funcionarios
WHERE salario
BETWEEN 2100 AND 3200;--IN (2100 , 3200);

--COUNT
SELECT COUNT(nome) AS qtd_funcionarios FROM funcionarios;

--SUM
SELECT SUM(salario) AS salarios_total FROM funcionarios;

--REPLACE
SELECT REPLACE(endereco, 'taguatinga', 'taguatinga sul') AS endereco FROM funcionarios;

--GROUP BY
SELECT COUNT(endereco) AS qtd_enderecos, endereco FROM funcionarios GROUP BY endereco--, nome;
SELECT COUNT(endereco) AS qtd_enderecos, nome FROM funcionarios GROUP BY nome;

--CONCAT
SELECT CONCAT(nome , ' recebe R$' , salario) AS salario_mensal FROM funcionarios;

--MAX, MIN, AVG
SELECT MAX(salario) AS maior_salario FROM funcionarios;
SELECT MIN(salario) AS menor_salario FROM funcionarios;
SELECT AVG(salario) AS media_salario FROM funcionarios;

--TABELA TEMPORÁRIA
SELECT *
INTO #moradores_de_tagua --para consultar em outra seção, escreva com dois # ao invés de um
FROM funcionarios
WHERE endereco = 'taguatinga';

SELECT * FROM #moradores_de_tagua;

--TABELA FÍSICA
SELECT *
INTO moradores_tagua
FROM funcionarios
WHERE endereco = 'taguatinga';

SELECT * FROM moradores_tagua;

--TABELA VIRTUAL
CREATE TABLE funcionarios_virtual(
		id INT,
		nome VARCHAR(255),
		sexo CHAR(1),
		endereco VARCHAR(255),
		salario DECIMAL(10,2)
);

INSERT INTO funcionarios_virtual
SELECT id, nome, sexo, endereco, salario
FROM funcionarios;

SELECT * FROM funcionarios_virtual;

--VIEWS
CREATE VIEW moradores_tagua_view AS
SELECT *
FROM funcionarios
WHERE endereco = 'taguatinga';

SELECT * FROM moradores_tagua_view;

--RTRIM, LTRIM, TRIM
SELECT RTRIM(nome) AS nome from funcionarios;
SELECT LTRIM(nome) AS nome from funcionarios;
SELECT LTRIM(RTRIM(nome)) AS nome from funcionarios;
SELECT TRIM(nome) AS nome from funcionarios;

--CASE 1
SELECT
		nome,
		sexo,
		CASE sexo
				WHEN 'm' THEN 'masculino'
				WHEN 'f' THEN 'feminino'
				END AS genero,
		endereco,
		salario
FROM funcionarios;

--CASE 2
SELECT
		nome,
		sexo,
		CASE WHEN sexo IN('m','f') THEN 'ser humano normal' END AS genero,
		endereco,
		salario
FROM funcionarios;

--CASE 3
SELECT
		nome,
		sexo,
		CASE WHEN sexo = 'm' OR sexo = 'f' THEN 'ser humano normal' END AS genero,
		endereco,
		salario
FROM funcionarios;

--UPDATE, BEGIN TRANSACTION, COMMIT, ROLLBACK
BEGIN TRAN--SACTION --funciona das duas formas
UPDATE funcionarios
SET endereco = 'taguatinga sul'
WHERE endereco = 'taguatinga'
COMMIT --funciona como uma fila: se fez x transactions, precisa fazer x commits independente se tiver dado certo ou errado. na dúvida, faz commit até esvaziar a fila

BEGIN TRAN
UPDATE funcionarios
SET endereco = 'tagua sul'
WHERE endereco = 'taguatinga sul'
ROLLBACK --oposto do commit, volta atrás com a mudança feita

SELECT * FROM funcionarios;