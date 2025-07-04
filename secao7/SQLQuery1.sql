/* cria banco */
create database rh;

/* usa banco */
use rh;

/* cria tabela de maneira errada */
create table funcionarios(
		id int identity(1,1) primary key,
		nome varchar(255),
		sexo char(1),
		endereco varchar(255),
		salario decimal(5,4)
);

/* tenta inserir valores e dá erro */
insert into funcionarios (nome, sexo, endereco, salario)
values ('lucas', 'm', 'taguatinga', 2100.00);

/* renomeia nome da tabela para backup */
/* sp_rename é um stored procedure do SQL Server usado para renomear um objeto do banco de dados */
EXEC sp_rename 'funcionarios', 'funcionarios_old';

/* recria a tabela corretamente */
create table funcionarios(
		id int identity(1,1) primary key,
		nome varchar(255),
		sexo char(1),
		endereco varchar(255),
		salario decimal(8,2)
);

/* puxa os dados da old para a nova */
INSERT INTO funcionarios (nome, sexo, endereco, salario)
SELECT nome, sexo, endereco, salario FROM funcionarios_old;

/* apaga tabela old */
drop table funcionarios_old;

/* insere dados para validar */
insert into funcionarios (nome, sexo, endereco, salario)
values ('lucas', 'm', 'taguatinga', 2100),
('isabela', 'f', 'taguatinga', 3200);

/* vê dados da tabela */
select * from funcionarios;

/* apaga os dados da tabela */
truncate table funcionarios;

/* usa outro banco para poder apagar o atual */
use master;

/* apaga banco atual */
drop database rh;