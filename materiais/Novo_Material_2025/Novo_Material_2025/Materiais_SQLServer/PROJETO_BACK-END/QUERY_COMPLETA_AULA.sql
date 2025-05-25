

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
--Criando dimens�es


tipo_eventos
Cobertura
Coordenador_Resp
COntratante
*/
--==========================================================


--Criando dimens�o tipo_eventos

select *
from	TB_EVENTOS2


--Criando a dimens�o
select distinct(tipo_eventos)
from	TB_EVENTOS2


--Inserindo na dimens�o
select distinct(tipo_eventos)
into	dim_tipo_eventos
from	TB_EVENTOS2


select *
from dim_tipo_eventos
--==========================================================
--==========================================================
--==========================================================


--Criando dimens�o Cobertura

select *
from	TB_EVENTOS2


--Criando dimensao
select distinct(cobertura)
from	TB_EVENTOS2

--Inserindo na dimens�o
select distinct(cobertura)
into	dim_cobertura
from	TB_EVENTOS2


select *
from dim_cobertura

--==========================================================
--==========================================================
--==========================================================


--Criando dimens�o Cobertura

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



--Criando dimens�o Cobertura

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
