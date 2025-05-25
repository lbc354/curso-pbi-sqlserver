

--Criando dimensões

/*
Criar as dimensões

tipo_eventos
Cobertura
Coordenador_Resp
COntratante
*/

--==========================================================


--DIMENSÇAO EVENTOS

SELECT *
FROm eventos

--validando
SELECT	distinct(tipo_eventos)		
FROm EVENTOS



--inserindo para dimensão
SELECT distinct(tipo_eventos)
into	dim_tipo_eventos
FROm	eventos


-- consultando a tabela

--inserindo para dimensão
SELECT *
FROm	dim_tipo_eventos
--==========================================================
--==========================================================
--==========================================================




--COBERTURA



SELECT *
FROm eventos



--validando
SELECT distinct(COBERTURA)
FROm EVENTOS



--inserindo para dimensão
SELECT distinct(COBERTURA)
into	dim_COBERTURA
FROm	eventos


-- consultando a tabela

--inserindo para dimensão
SELECT *
FROm	dim_COBERTURA
--==========================================================
--==========================================================
--==========================================================


--Coordenador_Resp



SELECT *
FROm eventos



--validando
SELECT distinct(Coordenador_Resp)
FROm EVENTOS



--inserindo para dimensão
SELECT distinct(Coordenador_Resp)
into	dim_Coordenador_Resp
FROm	eventos


-- consultando a tabela

--inserindo para dimensão
SELECT *
FROm	dim_Coordenador_Resp
--==========================================================
--==========================================================
--==========================================================


--COntratante



SELECT *
FROm eventos



--validando
SELECT distinct(Contratante)
FROm EVENTOS



--inserindo para dimensão
SELECT distinct(Contratante)
into	dim_Contratante
FROm	eventos


-- consultando a tabela

--inserindo para dimensão
SELECT *
FROm	dim_Contratante

--==========================================================
--==========================================================
--==========================================================





