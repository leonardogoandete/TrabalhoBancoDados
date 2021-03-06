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

-- soma total da montagem gpu--
SELECT C.ID_Montagem AS ID_PC, U.Nome AS NOME_USUARIO ,(M.Valor+P.Valor+ME.Valor) as VALOR_TOTAL
FROM PC C
INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
INNER JOIN PC_Memoria PM ON C.ID_Montagem = PM.id_montagem
INNER JOIN Memoria ME ON PM.ID_MEMORIA = ME.ID_MEMORIA
INNER JOIN PC_PlacaVideo PPV ON C.ID_MONTAGEM = PPV.ID_MONTAGEM
WHERE PPV.ID_PlacaVideo is null
ORDER BY C.ID_Montagem asc;

-- exibe montagens com valores acima de 700 --
SELECT U.ID_Conta AS ID_USUARIO, M.NOME AS NOME_DA_PLACA_MAE, M.Valor AS VALOR_PLACA_MAE
FROM PC C
INNER JOIN Usuario U ON C.ID_Conta = U.ID_Conta
INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
GROUP BY U.ID_Conta, M.NOME, M.Valor HAVING (M.Valor) > 700
ORDER BY U.ID_Conta;

-- exibe total de compatibilidades de memoria para cada tipo de placa mae --
SELECT p.NOME, COUNT(pm.ID_MEMORIA) AS NRO_MEMORIAS_COMPATIVEIS
FROM PLACAMAEMEMORIA pm
INNER JOIN placamae p on pm.ID_PLACAMAE = p.ID_PLACAMAE
GROUP BY p.NOME HAVING COUNT (pm.ID_MEMORIA) >= 7;

-- exibe modelos de placas agrupadas por modelo e as memorias compativeis --
SELECT p.NOME AS MODELO_PLACAMAE, m.NOME AS MODELO_MEMORIA,m.CAPACIDADE AS CAPACIDADES, m.ARQUITETURA AS ARQUITETURA
FROM PLACAMAEMEMORIA pm
INNER JOIN placamae p on pm.ID_PLACAMAE = p.ID_PLACAMAE
INNER JOIN MEMORIA m on pm.ID_MEMORIA = m.ID_MEMORIA
ORDER BY p.NOME;

-- exibe a soma total de Montagens incluindo todas as pe??as e exibe o montante total das montagens --
SELECT sum(M.Valor+P.Valor+ME.Valor+pv.valor) as VALOR_TOTAL
FROM PC C
INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
INNER JOIN PC_Memoria PM ON C.ID_Montagem = PM.id_montagem
INNER JOIN Memoria ME ON PM.ID_MEMORIA = ME.ID_MEMORIA
INNER JOIN PC_PlacaVideo PPV ON C.ID_MONTAGEM = PPV.ID_MONTAGEM
INNER JOIN PlacaVideo PV ON PPV.ID_PLACAVIDEO = PV.ID_PLACAVIDEO
where m.ARQUITETURA = 'Intel'
;

-- exibe a soma total de Montagens incluindo todas as pe??as sem GPU e exibe o montante total das montagens --
SELECT sum(M.Valor+P.Valor+ME.Valor) as VALOR_TOTAL
FROM PC C
INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
INNER JOIN PC_Memoria PM ON C.ID_Montagem = PM.id_montagem
INNER JOIN Memoria ME ON PM.ID_MEMORIA = ME.ID_MEMORIA
INNER JOIN PC_PlacaVideo PPV ON C.ID_MONTAGEM = PPV.ID_MONTAGEM
WHERE PPV.ID_PlacaVideo is null AND m.ARQUITETURA = 'Intel'
;

-- exibe a soma total de Montagens incluindo todas as pe??as sem GPU e exibe o montante total das montagens --
-- agrupado por arquitetura -
SELECT m.arquitetura, sum(M.Valor+P.Valor+ME.Valor+pv.valor) as VALOR_TOTAL
FROM PC C
INNER JOIN PlacaMae M ON C.ID_PlacaMae = M.ID_PlacaMae
INNER JOIN CPU P ON C.ID_CPU = P.ID_CPU
INNER JOIN PC_Memoria PM ON C.ID_Montagem = PM.id_montagem
INNER JOIN Memoria ME ON PM.ID_MEMORIA = ME.ID_MEMORIA
INNER JOIN PC_PlacaVideo PPV ON C.ID_MONTAGEM = PPV.ID_MONTAGEM
INNER JOIN PlacaVideo PV ON PPV.ID_PLACAVIDEO = PV.ID_PLACAVIDEO
GROUP BY m.ARQUITETURA
;

-- Visualizar quais placa maes se relacionam com mais de uma CPU e Memoria
select p2.nome, count(p.ID_CPU) AS NRO_CPUs_RELACIONADAS, count(pm.ID_MEMORIA) AS NRO_MEM_RELACIONADAS
from PC P
inner join PLACAMAE P2 on P.ID_PLACAMAE = P2.ID_PLACAMAE
inner join PC_MEMORIA PM on P.ID_MONTAGEM = PM.ID_MONTAGEM
GROUP BY p2.nome HAVING COUNT(p.ID_cpu) > 1 AND COUNT(pm.id_memoria) > 1
;
