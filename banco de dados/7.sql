-- Escrever uma consulta, para trazer o número dos clientes que realizaram mais de uma ligação dentro do mesmo período de
-- 1 dia. O campo identificador para a quantidade de chamadas excedentes à 1 será chamado de "Rechamadas".
-- a. Palavras-chave: GROUP BY, ORDER BY, RANK OVER, CAST, DATETIME
-- b. Neste exemplo, o cliente 11222211133 realizou duas chamadas no dia 11/02/2020, segue o retorno abaixo.

select
date_format(datahora, '%d/%m/%y') as 'Data',
numerocliente as NumeroCliente,
count(numerocliente) - 1 as Rechamadas 
from ligacoes
group by numerocliente
having Rechamadas > 0
order by datahora