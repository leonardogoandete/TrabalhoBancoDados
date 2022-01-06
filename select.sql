-- Montagem do PC, buscando nome dos itens da colunas usando o ID.

    SELECT C.ID_Montagem AS ID_PC, U.Nome AS NOME_USUARIO, M.NOME AS NOME_DA_PLACA_MAE, P.Modelo AS NOME_CPU, ME.nome AS NOME_MEMORIA, PV.nome AS PLACA_VIDEO
        FROM PC C
        INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
        INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
        INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
        INNER JOIN PC_Memoria PM ON C.ID_Montagem = pm.id_montagem
        INNER JOIN Memoria ME ON pm.ID_MEMORIA = ME.ID_MEMORIA
        INNER JOIN PC_PlacaVideo PPV ON C.ID_MONTAGEM = PPV.ID_MONTAGEM
        INNER JOIN PlacaVideo PV ON PPV.ID_PLACAVIDEO = PV.ID_PLACAVIDEO
        ORDER BY C.ID_Montagem asc;

--- sem gpu
        SELECT C.ID_Montagem AS ID_PC, U.Nome AS NOME_USUARIO, M.NOME AS NOME_DA_PLACA_MAE, P.Modelo AS NOME_CPU, ME.nome AS NOME_MEMORIA
            FROM PC C
            INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
            INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
            INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
            INNER JOIN PC_Memoria PM ON C.ID_Montagem = pm.id_montagem
            INNER JOIN Memoria ME ON pm.ID_MEMORIA = ME.ID_MEMORIA
            INNER JOIN PC_PlacaVideo PPV ON C.ID_MONTAGEM = PPV.ID_MONTAGEM
            WHERE PPV.ID_PlacaVideo is null
            ORDER BY C.ID_Montagem asc;

-- soma total da montagem --

SELECT C.ID_Montagem AS ID_PC, U.Nome AS NOME_USUARIO ,(M.Valor+P.Valor+ME.Valor+PV.Valor) as VALOR_TOTAL
    FROM PC C
    INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
    INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
    INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
    INNER JOIN PC_Memoria PM ON C.ID_Montagem = PM.id_montagem
    INNER JOIN Memoria ME ON PM.ID_MEMORIA = ME.ID_MEMORIA
    INNER JOIN PC_PlacaVideo PPV ON C.ID_MONTAGEM = PPV.ID_MONTAGEM
    INNER JOIN PlacaVideo PV ON PPV.ID_PLACAVIDEO = PV.ID_PLACAVIDEO
    ORDER BY C.ID_Montagem asc;

-- exibe montagens com valores acima de 700 --
SELECT U.ID_Conta AS ID_USUARIO, M.NOME AS NOME_DA_PLACA_MAE, M.Valor AS VALOR_PLACA_MAE
    FROM PC C
    INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
    INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
    GROUP BY U.ID_Conta, M.NOME, M.Valor HAVING (M.Valor) > 700
    ORDER BY U.ID_Conta;
