


-- Cria��o da tabela Calendario com colunas essenciais
CREATE TABLE Calendario (
    Data DATE PRIMARY KEY,       -- Coluna para armazenar a data, que ser� �nica (chave prim�ria)
    Ano INT,                     -- Coluna para armazenar o ano da data
    Mes INT,                     -- Coluna para armazenar o n�mero do m�s (1 a 12)
    Dia INT,                     -- Coluna para armazenar o n�mero do dia (1 a 31)
    DiaSemana VARCHAR(50)        -- Coluna para armazenar o nome do dia da semana (por exemplo, "Monday")
);

-- Passo 2: Definir o intervalo de datas
DECLARE @DataInicial DATE = '2023-01-01'; -- Define a data inicial do intervalo (ajust�vel)
DECLARE @DataFinal DATE = '2024-12-31';   -- Define a data final do intervalo (ajust�vel)

-- Passo 3: Preencher a tabela calend�rio
DECLARE @DataAtual DATE = @DataInicial;   -- Inicializa a vari�vel com a data inicial

-- Loop para preencher a tabela com todas as datas no intervalo definido
WHILE @DataAtual <= @DataFinal            -- Continua enquanto a data atual estiver no intervalo
BEGIN
    -- Insere uma nova linha na tabela Calendario com os valores calculados
    INSERT INTO Calendario (Data, Ano, Mes, Dia, DiaSemana)
    VALUES (
        @DataAtual,                       -- Data atual
        YEAR(@DataAtual),                 -- Ano da data atual
        MONTH(@DataAtual),                -- M�s da data atual
        DAY(@DataAtual),                  -- Dia da data atual
        DATENAME(WEEKDAY, @DataAtual)     -- Nome do dia da semana da data atual (ex.: "Monday")
    );
    
    -- Incrementa a data atual em 1 dia
    SET @DataAtual = DATEADD(DAY, 1, @DataAtual);
END;

