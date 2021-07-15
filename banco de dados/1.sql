-- Criar uma estrutura de banco de dados de acordo com o diagrama que você pode encontrar clicando aqui.
-- a. Palavras-chave: CREATE TABLE, VARCHAR, INT, DATETIME, PRIMARY KEY, FOREIGN KEY, IDENTITY

-- ESTADOS
create table if not exists estados (
    codigo int unsigned not null auto_increment,
    nome varchar(30) not null,
    primary key (codigo),
    unique key (codigo)
);

-- CIDADES
create table if not exists cidades (
    codigo int unsigned not null auto_increment,
    nome varchar(30) not null,
    codigoestado int unsigned not null,
    primary key (codigo),
    unique key (codigo),
    foreign key (codigoestado) references estados (codigo)
);

-- OPERADORES
create table if not exists operadores (
    codigo int unsigned not null auto_increment,
    nome varchar(30) not null,
    codigocidade int unsigned not null, -- analizando o diagrama, faz 
    -- mais sentido os operadores estarem relacionados as cidades e não 
    -- aos estados devido ao pedido de trazer as ligações por cidades
    primary key (codigo),
    unique key (codigo),
    foreign key (codigocidade) references cidades (codigo)
);

-- LIGAÇÕES
create table if not exists ligacoes (
    numerocliente varchar(11) not null,
    datahora datetime not null,
    codigooperador int unsigned not null,
    foreign key (codigooperador) references operadores (codigo)
);
