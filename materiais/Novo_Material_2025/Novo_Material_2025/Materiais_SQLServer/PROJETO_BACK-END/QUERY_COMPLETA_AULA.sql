

--CRIANDO O BANCO
CREATE DATABASE EVENTOS2

--CHAMANDO O BANCO
USE EVENTOS2


SELECT *
FROM TB_EVENTOS2


SELECT COUNT(DATA_EVNT)
FROM	TB_EVENTOS2
--==============================================

/*
--Criando dimensões


tipo_eventos
Cobertura
Coordenador_Resp
COntratante
*/
--==========================================================


--Criando dimensão tipo_eventos

select *
from	TB_EVENTOS2


--Criando a dimensão
select distinct(tipo_eventos)
from	TB_EVENTOS2


--Inserindo na dimensão
select distinct(tipo_eventos)
into	dim_tipo_eventos
from	TB_EVENTOS2


select *
from dim_tipo_eventos
--==========================================================
--==========================================================
--==========================================================


--Criando dimensão Cobertura

select *
from	TB_EVENTOS2


--Criando dimensao
select distinct(cobertura)
from	TB_EVENTOS2

--Inserindo na dimensão
select distinct(cobertura)
into	dim_cobertura
from	TB_EVENTOS2


select *
from dim_cobertura

--==========================================================
--==========================================================
--==========================================================


--Criando dimensão Cobertura

select *
from	TB_EVENTOS2


--Criando dimensao
select distinct(COORDENADOR_RESP)
from	TB_EVENTOS2


--Inserindo na dimensao
select distinct(COORDENADOR_RESP)
into	dim_coordenador_resp
from	TB_EVENTOS2


select *
from dim_coordenador_resp

--==========================================================
--==========================================================
--==========================================================


SELECT * FROM dim_coordenador_resp
SELECT * FROM dim_cobertura
SELECT * FROM dim_tipo_eventos
SELECT * FROM dim_Contratante



--==========================================================
--==========================================================
--==========================================================



--Criando dimensão Cobertura

select *
from	TB_EVENTOS2


--Criando dimensao
select distinct(Contratante)
from	TB_EVENTOS2


--Inserindo na dimensao
select distinct(Contratante)
into	dim_Contratante
from	TB_EVENTOS2


select *
from dim_Contratante
--==========================================================
--==========================================================
--==========================================================
