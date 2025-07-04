-- control+shift+u transforma em ciaxa alta

CREATE DATABASE controle_geral;
USE controle_geral;

CREATE TABLE estoque(
		id INT IDENTITY(1,1) PRIMARY KEY,
		quantidade INT NOT NULL,
		nome_prd VARCHAR(255) NOT NULL,
		disponivel CHAR(1) NOT NULL,
		numero_da_nota INT NOT NULL
);

CREATE TABLE venda(
		id INT IDENTITY(1,1) PRIMARY KEY,
		valor DECIMAL(10,2) NOT NULL,
		prod VARCHAR(255) NOT NULL,
		quantidade INT NOT NULL,
		vendedor VARCHAR(255) NOT NULL,
		filial VARCHAR(255) NOT NULL
);

CREATE TABLE clientes(
		id INT IDENTITY(1,1) PRIMARY KEY,
		nome VARCHAR(255) NOT NULL,
		cpf VARCHAR(11) NOT NULL,
		endereco VARCHAR(255) NOT NULL,
		cidade VARCHAR(255) NOT NULL,
		sexo CHAR(1) NOT NULL
);

INSERT INTO estoque(quantidade, nome_prd, disponivel, numero_da_nota)
VALUES (100, 'salgadinho', 's', 1234567890),
(50, 'bolinho', 'n', 1928374650);

INSERT INTO venda(valor, prod, quantidade, vendedor, filial)
VALUES (10, 'salgadinho', 2, 'lucas', 'df'),
(5, 'bolinho', 4, 'isabela', 'df');

INSERT INTO clientes(nome, cpf, endereco, cidade, sexo)
VALUES ('thainah', '12345678900', 'taguatinga', 'brasília', 'f');

SELECT * FROM estoque;
SELECT * FROM venda;
SELECT * FROM clientes;