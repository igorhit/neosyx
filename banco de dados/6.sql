-- Escrever uma consulta para trazer a participação de atendimento de cada CIDADE no total de atendimentos, ou seja, o total
-- de ligações, em percentual, que cada CIDADE ocupa do total de ligações de todas as Cidades.
-- a. Palavras-chave: GROUP BY, COUNT, INNER JOIN, SUBQUERY, VARIÁVEIS, TABELAS VARIÁVEIS

select 
c.nome as Cidades,
concat(cast(count(o.codigocidade) / (select count(*) from ligacoes) * 100.0 as decimal(3,0)), '%') as 'Percentual de Ligações'
from ligacoes
inner join operadores o on codigooperador = o.codigo
inner join cidades c on o.codigocidade = c.codigo
group by codigocidade
order by c.nome
