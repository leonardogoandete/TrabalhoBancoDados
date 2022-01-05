CREATE TABLE Usuario (
ID_Conta number constraint pk_Usuario primary key,
Email varchar2(40) constraint nemail_Email not null,
Nome varchar2(40) constraint nnome_Nome not null
);

CREATE TABLE CPU (
ID_CPU number PRIMARY KEY,
MODELO varchar2(30) constraint modeloCPU_MODELO not null,
Soquete varchar2(20) constraint soqueteCPU_CPU not null,
Arquitetura varchar2(20) constraint arquiteturaCPU_Arquitetura not null,
Valor number constraint valorCPU_Valor not null
);

CREATE TABLE Memoria (
ID_Memoria number constraint pk_Memoria PRIMARY KEY,
nome varchar2(20) constraint nomemem_nome not null,
Capacidade varchar2(20) constraint capacidademem_Capacidade not null,
Arquitetura varchar2(20) constraint arquiteturamem_Arquitetura not null,
Valor number constraint valormem_Valor not null
);

CREATE TABLE PlacaVideo (
ID_PlacaVideo number constraint pk_PlacaVideo PRIMARY KEY,
nome varchar2(20) constraint nomePlacaVideo_nome not null,
Capacidade varchar2(20) constraint capacidadePlacaVideo_Capacidade not null,
Valor number constraint valorPlacaVideo_Valor not null
);

CREATE TABLE PlacaMae (
ID_PlacaMae number constraint pk_PlacaMae PRIMARY KEY,
NOME varchar2(40) constraint nomePlacaMae_NOME not null,
MODELO varchar2(40) constraint modeloPlacaMae_MODELO not null,
Arquitetura varchar2(20)constraint arquiteturaPlacaMae_Arquitetura not null,
Soquete varchar2(20) constraint soquetePlacaMae_Soquete not null,
Valor number constraint valorPlacaMae_Valor not null
);

CREATE TABLE PC (
ID_Montagem number constraint pk_PC PRIMARY KEY,
ID_PlacaMae number constraint nPlacaMae_PlacaMae not null,
ID_Conta number constraint nIDConta_ID_Conta not null,
ID_CPU number constraint nIDCPU_ID_CPU not null
);

CREATE TABLE CPU_PlacaMae (
ID_CPU number,
ID_PlacaMae number,
constraint pk_CPU_PlacaMae primary key(ID_CPU,ID_PlacaMae)
);

CREATE TABLE PlacaMaeMemoria (
ID_Memoria number,
ID_PlacaMae number,
constraint pk_PlacaMaeMemoria primary key(ID_Memoria,ID_PlacaMae)
);

CREATE TABLE PC_PlacaVideo (
ID_Montagem number,
ID_PlacaVideo number,
constraint pk_PC_PlacaVideo primary key(ID_Montagem,ID_PlacaVideo)
);

CREATE TABLE PC_Memoria (
ID_Memoria number,
ID_Montagem number,
constraint pk_PC_Memoria primary key(ID_Memoria,ID_Montagem)
);

alter table PC add
(constraint fk_PlacaMae_ID_PlacaMae foreign key(ID_PlacaMae) references PlacaMae(ID_PlacaMae),
constraint fk_Usuario_ID_Conta foreign key(ID_Conta) references Usuario(ID_Conta),
constraint fk_CPU_ID_CPU foreign key(ID_CPU) references CPU(ID_CPU),
);

alter table CPU_PlacaMae add
(constraint fk_CPU2_ID_CPU foreign key(ID_CPU) references CPU(ID_CPU),
constraint fk_PlacaMae2_ID_PlacaMae foreign key(ID_PlacaMae) references PlacaMae(ID_PlacaMae));

alter table PlacaMaeMemoria add
(constraint fk_PlacaMae3_ID_PlacaMae foreign key(ID_PlacaMae) references PlacaMae(ID_PlacaMae),
constraint fk_Memoria_ID_Memoria foreign key(ID_Memoria) references Memoria(ID_Memoria));

alter table PC_PlacaVideo add
(constraint fk_PC_ID_Montagem foreign key(ID_Montagem) references PC(ID_Montagem),
constraint fk_PlacaVideoPc_ID_PlacaVideo foreign key(ID_PlacaVideo) references PlacaVideo(ID_PlacaVideo));

alter table PC_Memoria add
(constraint fk_Memoria2_ID_Memoria foreign key(ID_Memoria) references Memoria(ID_Memoria),
constraint fk_PC2_ID_Montagem foreign key(ID_Montagem) references PC(ID_Montagem));

CREATE SEQUENCE a_Usuario
start with 100000
maxvalue 199999
increment by 1;

CREATE SEQUENCE d_CPU
start with 4000
maxvalue 4999
increment by 1;

CREATE SEQUENCE e_Memoria
start with 5000
maxvalue 5999
increment by 1;

CREATE SEQUENCE f_PlacaVideo
start with 6000
maxvalue 6999
increment by 1;

CREATE SEQUENCE c_PlacaMae
start with 3000
maxvalue 3999
increment by 1;

CREATE SEQUENCE b_PC
start with 2000
maxvalue 2999
increment by 1;
