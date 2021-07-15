-- Escrever uma consulta para trazer a participação de atendimento de cada CIDADE no total de atendimentos, ou seja, o total
-- de ligações, em percentual, que cada CIDADE ocupa do total de ligações de todas as Cidades.
-- a. Palavras-chave: GROUP BY, COUNT, INNER JOIN, SUBQUERY, VARIÁVEIS, TABELAS VARIÁVEIS

-- criando tabela auxiliar
create table lig_cid as 
select 
o.codigocidade as id_cid, 
count(codigooperador) as ligações 
from ligacoes
inner join operadores o on codigooperador = codigo
group by codigocidade

-- convertendo ligações por cidade para percentual do total de ligações
select
concat(cast(ligações / (select count(codigooperador) from ligacoes) * 100 as decimal(15,0)), '%') as 'Percentual de Ligações',
nome as CIDADES
from cidades
inner join lig_cid on id_cid = codigo
order by nome

-- deletando tabela auxiliar
drop table if exists lig_cid