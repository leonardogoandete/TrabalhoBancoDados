-- Montagem do PC, buscando nome dos itens da colunas usando o ID.
SELECT C.ID_Montagem AS ID_PC, U.Nome AS NOME_USUARIO, M.NOME AS NOME_DA_PLACA_MÃE, P.Modelo AS NOME_CPU, ME.nome AS NOME_MEMORIA, PV.nome AS NOME_DA_PLACA_DE_VÍDEO
    FROM PC C
    INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
    INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
    INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
    INNER JOIN Memoria ME ON C.ID_Memoria = ME.ID_Memoria
    INNER JOIN PlacaVideo PV ON C.ID_PlacaVideo = PV.ID_PlacaVideo;


-- soma total da montagem --
SELECT C.ID_Montagem AS ID_PC, U.Nome AS NOME_USUARIO, M.Modelo AS NOME_DA_PLACA_MÃE, P.Modelo AS MODELO_CPU, ME.nome AS NOME_MEMORIA, PV.nome AS NOME_DA_PLACA_DE_VÍDEO,
    (M.Valor+P.Valor+ME.Valor+PV.Valor) AS VALOR_TOTAL_DA_MONTAGEM
    FROM PC C
    INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
    INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
    INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
    INNER JOIN Memoria ME ON C.ID_Memoria = ME.ID_Memoria
    INNER JOIN PlacaVideo PV ON C.ID_PlacaVideo = PV.ID_PlacaVideo;
