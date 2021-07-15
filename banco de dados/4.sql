-- Escrever uma consulta para trazer a quantidade de ligações por CIDADE.
-- a. Palavras-chave: GROUP BY, COUNT, INNER JOIN

-- criando tabela auxiliar
create table lig_cid as 
select 
o.codigocidade as id_cid, 
count(codigooperador) as ligações 
from ligacoes
inner join operadores o on codigooperador = codigo
group by codigocidade

-- consulta de ligações por cidade
select
nome as CIDADES,
ligações as LIGAÇÕES
from cidades
inner join lig_cid on id_cid = codigo
order by ligações desc

-- deletando tabela auxiliar
drop table if exists lig_cid