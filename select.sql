-- Montagem do PC, buscando nome dos itens da colunas usando o ID.
/*
SELECT C.ID_Montagem AS ID_PC, U.Nome AS NOME_USUARIO, M.NOME AS NOME_DA_PLACA_MÃE, P.Modelo AS NOME_CPU, ME.nome AS NOME_MEMORIA, PV.nome AS NOME_DA_PLACA_DE_VÍDEO
    FROM PC C
    INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
    INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
    INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
    INNER JOIN Memoria ME ON C.ID_Memoria = ME.ID_Memoria
    INNER JOIN PlacaVideo PV ON C.ID_PlacaVideo = PV.ID_PlacaVideo;
*/
    --- novo
    SELECT C.ID_Montagem AS ID_PC, U.Nome AS NOME_USUARIO, M.NOME AS NOME_DA_PLACA_MAE, P.Modelo AS NOME_CPU, ME.nome AS NOME_MEMORIA, PV.nome AS PLACA_VIDEO
        FROM PC C
        INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
        INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
        INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
        INNER JOIN PC_Memoria PM ON C.ID_Montagem = pm.id_montagem
        INNER JOIN Memoria ME ON pm.ID_MEMORIA = ME.ID_MEMORIA
        INNER JOIN PC_PlacaVideo PPV ON C.ID_MONTAGEM = PPV.ID_MONTAGEM
        INNER JOIN PlacaVideo PV ON PPV.ID_PLACAVIDEO = PV.ID_PLACAVIDEO;

-------------------------------------- ====== --------------------------------------

-- soma total da montagem --
/*
SELECT C.ID_Montagem AS ID_PC, U.Nome AS NOME_USUARIO, M.Modelo AS NOME_DA_PLACA_MÃE, P.Modelo AS MODELO_CPU, ME.nome AS NOME_MEMORIA, PV.nome AS NOME_DA_PLACA_DE_VÍDEO,
    (M.Valor+P.Valor+ME.Valor+PV.Valor) AS VALOR_TOTAL_DA_MONTAGEM
    FROM PC C
    INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
    INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
    INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
    INNER JOIN Memoria ME ON C.ID_Memoria = ME.ID_Memoria
    INNER JOIN PlacaVideo PV ON C.ID_PlacaVideo = PV.ID_PlacaVideo;
*/
SELECT C.ID_Montagem AS ID_PC, U.Nome AS NOME_USUARIO ,(M.Valor+P.Valor+ME.Valor+PV.Valor) as VALOR_TOTAL
    FROM PC C
    INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
    INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
    INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
    INNER JOIN PC_Memoria PM ON C.ID_Montagem = PM.id_montagem
    INNER JOIN Memoria ME ON PM.ID_MEMORIA = ME.ID_MEMORIA
    INNER JOIN PC_PlacaVideo PPV ON C.ID_MONTAGEM = PPV.ID_MONTAGEM
    INNER JOIN PlacaVideo PV ON PPV.ID_PLACAVIDEO = PV.ID_PLACAVIDEO;

-- exibe montagens com valores acima de 700 --
SELECT U.ID_Conta AS ID_USUARIO, M.NOME AS NOME_DA_PLACA_MAE, M.Valor AS VALOR_PLACA_MAE
    FROM PC C
    INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
    INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
    GROUP BY U.ID_Conta, M.NOME, M.Valor HAVING (M.Valor) > 700;
