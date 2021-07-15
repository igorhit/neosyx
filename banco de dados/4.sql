-- Escrever uma consulta para trazer a quantidade de ligações por CIDADE.
-- a. Palavras-chave: GROUP BY, COUNT, INNER JOIN

select 
c.nome as Cidades,
count(codigooperador) as Ligações 
from ligacoes
inner join operadores o on codigooperador = o.codigo
inner join cidades c on o.codigocidade = c.codigo
group by codigocidade
order by Ligações desc
