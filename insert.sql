-- USUARIO --
INSERT INTO "USR271"."USUARIO" (ID_CONTA, EMAIL, NOME) VALUES (a_Usuario.nextval, 'j.alves157@bol.com', 'Juliano Alves');
INSERT INTO "USR271"."USUARIO" (ID_CONTA, EMAIL, NOME) VALUES (a_Usuario.nextval, 'fernanda.ds1@gmail.com', 'Fernanda Souza');
INSERT INTO "USR271"."USUARIO" (ID_Conta, Email, nome) VALUES (a_Usuario.nextval,'rafael.santos@yahoo.com', 'Rafael Santos');
INSERT INTO "USR271"."USUARIO" (ID_Conta, Email, nome) VALUES (a_Usuario.nextval,'jesualdo_silva@uol.com', 'Jesualdo Silva');
INSERT INTO "USR271"."USUARIO" (ID_Conta, Email, nome) VALUES (a_Usuario.nextval,'lorrayne_kconceicao@uol.com', 'Lorrayne Katiussia Conceicao');

-- PLACAMAE --
INSERT INTO "USR271"."PLACAMAE" (ID_PLACAMAE, NOME, MODELO, ARQUITETURA, SOQUETE, VALOR) VALUES (c_Placamae.nextval, 'H510', 'Gigabyte Asus H510', 'Intel', 'LGA1200', '577,90');
INSERT INTO "USR271"."PLACAMAE" (ID_PLACAMAE, NOME, MODELO, ARQUITETURA, SOQUETE, VALOR) VALUES (c_Placamae.nextval, 'B450', 'Gigabyte Aorus B450', 'AMD', 'AM4', '747,27');
INSERT INTO "USR271"."PLACAMAE" (ID_PLACAMAE, NOME, MODELO, ARQUITETURA, SOQUETE, VALOR) VALUES (c_Placamae.nextval, 'X399', 'ASROCK X399', 'AMD', 'TR4', '2121,94');
INSERT INTO "USR271"."PLACAMAE" (ID_PLACAMAE, NOME, MODELO, ARQUITETURA, SOQUETE, VALOR) VALUES (c_Placamae.nextval, 'B360M', 'Asus TUF B360M-Plus Gaming', 'Intel', 'LGA1151', '699,90');
INSERT INTO "USR271"."PLACAMAE" (ID_PLACAMAE, NOME, MODELO, ARQUITETURA, SOQUETE, VALOR) VALUES (c_Placamae.nextval, 'B560M', 'Gigabyte B560M Aorus Elite', 'Intel', 'LGA1200', '979,94');

-- CPU --
INSERT INTO "USR271"."CPU" (ID_CPU, MODELO, SOQUETE, ARQUITETURA, VALOR) VALUES (d_CPU.nextval, 'i3-10100F', 'LGA1200', 'Intel', '589,90');
INSERT INTO "USR271"."CPU" (ID_CPU, MODELO, SOQUETE, ARQUITETURA, VALOR) VALUES (d_CPU.nextval, 'i7-10700F', 'LGA1200', 'Intel', '1749,90');
INSERT INTO "USR271"."CPU" (ID_CPU, MODELO, SOQUETE, ARQUITETURA, VALOR) VALUES (d_CPU.nextval, 'i5-9600K', 'LGA1151', 'Intel', '1686,35');
INSERT INTO "USR271"."CPU" (ID_CPU, MODELO, SOQUETE, ARQUITETURA, VALOR) VALUES (d_CPU.nextval, 'Ryzen 5 5600X', 'AM4', 'AMD', '1799,90');
INSERT INTO "USR271"."CPU" (ID_CPU, MODELO, SOQUETE, ARQUITETURA, VALOR) VALUES (d_CPU.nextval, 'Ryzen 9 3900X', 'TR4', 'AMD', '4384,51');
INSERT INTO "USR271"."CPU" (ID_CPU, MODELO, SOQUETE, ARQUITETURA, VALOR) VALUES (d_CPU.nextval, 'i5-11400', 'LGA1200', 'Intel', '1379,90');
INSERT INTO "USR271"."CPU" (ID_CPU, MODELO, SOQUETE, ARQUITETURA, VALOR) VALUES (d_CPU.nextval, 'i3-9100', 'LGA1151', 'Intel', '1131,54');
INSERT INTO "USR271"."CPU" (ID_CPU, MODELO, SOQUETE, ARQUITETURA, VALOR) VALUES (d_CPU.nextval, 'Ryzen 7 5800X', 'AM4', 'AMD', '2528,90');
INSERT INTO "USR271"."CPU" (ID_CPU, MODELO, SOQUETE, ARQUITETURA, VALOR) VALUES (d_CPU.nextval, 'Ryzen 5 5600G', 'AM4', 'AMD', '1624,90');
INSERT INTO "USR271"."CPU" (ID_CPU, MODELO, SOQUETE, ARQUITETURA, VALOR) VALUES (d_CPU.nextval, 'i3-9100', 'LGA1151', 'Intel', '1131,54');
INSERT INTO "USR271"."CPU" (ID_CPU, MODELO, SOQUETE, ARQUITETURA, VALOR) VALUES (d_CPU.nextval, 'Ryzen Threadripper 1950X', 'TR4', 'AMD', '3511,54');

-- Memoria --
INSERT INTO "USR271"."MEMORIA" (ID_MEMORIA, NOME, CAPACIDADE, ARQUITETURA, VALOR) VALUES (e_Memoria.nextval, 'HyperX', '4GiB', 'DDR4', '280,22');
INSERT INTO "USR271"."MEMORIA" (ID_MEMORIA, NOME, CAPACIDADE, ARQUITETURA, VALOR) VALUES (e_Memoria.nextval, 'Kingston Fury', '8GiB', 'DDR4', '269,90');
INSERT INTO "USR271"."MEMORIA" (ID_MEMORIA, NOME, CAPACIDADE, ARQUITETURA, VALOR) VALUES (e_Memoria.nextval, 'Corsair Vengeance', '8GiB', 'DDR4', '229,90');
INSERT INTO "USR271"."MEMORIA" (ID_MEMORIA, NOME, CAPACIDADE, ARQUITETURA, VALOR) VALUES (e_Memoria.nextval, 'XPG Hunter', '16GiB', 'DDR4', '529,90');
INSERT INTO "USR271"."MEMORIA" (ID_MEMORIA, NOME, CAPACIDADE, ARQUITETURA, VALOR) VALUES (e_Memoria.nextval, 'Crucial Ballistix', '8GiB', 'DDR4', '289,90');
INSERT INTO "USR271"."MEMORIA" (ID_MEMORIA, NOME, CAPACIDADE, ARQUITETURA, VALOR) VALUES (e_Memoria.nextval, 'Husky', '8GiB', 'DDR4', '472,90');
INSERT INTO "USR271"."MEMORIA" (ID_MEMORIA, NOME, CAPACIDADE, ARQUITETURA, VALOR) VALUES (e_Memoria.nextval, 'Corsair Vengeance', '32GiB', 'DDR4', '1055,04');
INSERT INTO "USR271"."MEMORIA" (ID_MEMORIA, NOME, CAPACIDADE, ARQUITETURA, VALOR) VALUES (e_Memoria.nextval, 'Maxsun', '16GiB', 'DDR4', '480,90');
INSERT INTO "USR271"."MEMORIA" (ID_MEMORIA, NOME, CAPACIDADE, ARQUITETURA, VALOR) VALUES (e_Memoria.nextval, 'Team Group T-Force', '8GiB', 'DDR4', '199,91');

-- GPU --
INSERT INTO "USR271"."PLACAVIDEO" (ID_PLACAVIDEO, NOME, CAPACIDADE, VALOR) VALUES (f_PlacaVideo.nextval, 'Gigabyte GTX-1660 OC', '6Gib', '1799,82');
INSERT INTO "USR271"."PLACAVIDEO" (ID_PLACAVIDEO, NOME, CAPACIDADE, VALOR) VALUES (f_PlacaVideo.nextval, 'Gainward RTX-3080 Ti', '12Gib', '14649,82');
INSERT INTO "USR271"."PLACAVIDEO" (ID_PLACAVIDEO, NOME, CAPACIDADE, VALOR) VALUES (f_PlacaVideo.nextval, 'Radeon RX6600 XT', '8Gib', '4599,94');
INSERT INTO "USR271"."PLACAVIDEO" (ID_PLACAVIDEO, NOME, CAPACIDADE, VALOR) VALUES (f_PlacaVideo.nextval, 'GTX-1650 OC', '4Gib', '2099,82');
INSERT INTO "USR271"."PLACAVIDEO" (ID_PLACAVIDEO, NOME, CAPACIDADE, VALOR) VALUES (f_PlacaVideo.nextval, 'MSI GTX-1050 Ti', '4Gib', '1749,82');
INSERT INTO "USR271"."PLACAVIDEO" (ID_PLACAVIDEO, NOME, CAPACIDADE, VALOR) VALUES (f_PlacaVideo.nextval, 'Radeon RX 6800 XT', '16Gib', '10248,82');
INSERT INTO "USR271"."PLACAVIDEO" (ID_PLACAVIDEO, NOME, CAPACIDADE, VALOR) VALUES (f_PlacaVideo.nextval, 'Radeon RX 560', '4Gib', '2249,82');
INSERT INTO "USR271"."PLACAVIDEO" (ID_PLACAVIDEO, NOME, CAPACIDADE, VALOR) VALUES (f_PlacaVideo.nextval, 'Geforce GT710', '1Gib', '299,82');
INSERT INTO "USR271"."PLACAVIDEO" (ID_PLACAVIDEO, NOME, CAPACIDADE, VALOR) VALUES (f_PlacaVideo.nextval, 'Radeon RX 550', '4Gib', '1029,90');
INSERT INTO "USR271"."PLACAVIDEO" (ID_PLACAVIDEO, NOME, CAPACIDADE, VALOR) VALUES (f_PlacaVideo.nextval, 'Radeon R9 370', '4Gib', '1150,82');

-- Montagens  --
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_PLACAVIDEO, ID_MEMORIA) VALUES (b_PC.nextval, '3000', '100002', '4000', '6004', '5003');
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_PLACAVIDEO, ID_MEMORIA) VALUES (b_PC.nextval, '3001', '100002', '4007', '6000', '5007');
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_PLACAVIDEO, ID_MEMORIA) VALUES (b_PC.nextval, '3002', '100003', '4004', '6005', '5006');
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_PLACAVIDEO, ID_MEMORIA) VALUES (b_PC.nextval, '3004', '100003', '4001', '6001', '5006');
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_PLACAVIDEO, ID_MEMORIA) VALUES (b_PC.nextval, '3004', '100000', '4001', '6002', '5003');
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_PLACAVIDEO, ID_MEMORIA) VALUES (b_PC.nextval, '3003', '100000', '4006', '6009', '5001');
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_PLACAVIDEO, ID_MEMORIA) VALUES (b_PC.nextval, '3004', '100001', '4002', '6003', '5004');
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_PLACAVIDEO, ID_MEMORIA) VALUES (b_PC.nextval, '3000', '100001', '4001', '6006', '5000');
-- Montagens sem GPU --
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_MEMORIA) VALUES (b_PC.nextval, '3000', '100002', '4000', '5007');
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_MEMORIA) VALUES (b_PC.nextval, '3000', '100003', '4001', '5002');
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_MEMORIA) VALUES (b_PC.nextval, '3000', '100000', '4000', '5003');
INSERT INTO "USR271"."PC" (ID_MONTAGEM, ID_PLACAMAE, ID_CONTA, ID_CPU, ID_MEMORIA) VALUES (b_PC.nextval, '3000', '100001', '4000', '5000');

-- CPU_PlacaMae --
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4000', '3000');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4001', '3000');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4005', '3000');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4000', '3004');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4001', '3004');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4005', '3004');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4002', '3003');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4006', '3003');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4009', '3003');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4003', '3001');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4007', '3001');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4008', '3001');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4004', '3002');
INSERT INTO "USR271"."CPU_PLACAMAE" (ID_CPU, ID_PLACAMAE) VALUES ('4010', '3002');

-- PlacaMaeMemoria --

INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5007', '3000');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5003', '3000');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5006', '3000');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5000', '3000');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5005', '3000');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5008', '3000');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5002', '3000');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5001', '3000');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5004', '3000');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5007', '3001');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5003', '3001');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5006', '3001');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5000', '3001');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5005', '3001');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5008', '3001');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5002', '3001');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5001', '3001');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5004', '3001');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5007', '3002');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5003', '3002');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5006', '3002');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5000', '3002');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5005', '3002');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5008', '3002');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5002', '3002');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5001', '3002');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5004', '3002');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5007', '3003');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5003', '3003');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5006', '3003');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5000', '3003');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5005', '3003');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5008', '3003');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5002', '3003');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5001', '3003');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5004', '3003');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5007', '3004');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5003', '3004');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5006', '3004');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5000', '3004');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5005', '3004');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5008', '3004');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5002', '3004');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5001', '3004');
INSERT INTO "USR271"."PLACAMAEMEMORIA" (ID_MEMORIA, ID_PLACAMAE) VALUES ('5004', '3004');

-- PC_Memoria --
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5003', '2000');
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5007', '2001');
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5007', '2002');
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5006', '2003');
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5006', '2004');
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5002', '2005');
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5003', '2006');
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5001', '2007');
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5003', '2008');
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5004', '2009');
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5000', '2010');
INSERT INTO "USR271"."PC_MEMORIA" (ID_MEMORIA, ID_MONTAGEM) VALUES ('5000', '2011');

-- PC_PlacaVideo --
INSERT INTO "USR271"."PC_PLACAVIDEO" (ID_MONTAGEM, ID_PLACAVIDEO) VALUES ('2000', '6004');
INSERT INTO "USR271"."PC_PLACAVIDEO" (ID_MONTAGEM, ID_PLACAVIDEO) VALUES ('2001', '6000');
INSERT INTO "USR271"."PC_PLACAVIDEO" (ID_MONTAGEM, ID_PLACAVIDEO) VALUES ('2003', '6005');
INSERT INTO "USR271"."PC_PLACAVIDEO" (ID_MONTAGEM, ID_PLACAVIDEO) VALUES ('2004', '6001');
INSERT INTO "USR271"."PC_PLACAVIDEO" (ID_MONTAGEM, ID_PLACAVIDEO) VALUES ('2006', '6002');
INSERT INTO "USR271"."PC_PLACAVIDEO" (ID_MONTAGEM, ID_PLACAVIDEO) VALUES ('2007', '6009');
INSERT INTO "USR271"."PC_PLACAVIDEO" (ID_MONTAGEM, ID_PLACAVIDEO) VALUES ('2009', '6003');
INSERT INTO "USR271"."PC_PLACAVIDEO" (ID_MONTAGEM, ID_PLACAVIDEO) VALUES ('2010', '6006');
