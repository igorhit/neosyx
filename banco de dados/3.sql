-- Escrever uma consulta para trazer a quantidade de ligações por dia (ignorando o horário).
-- a. Palavras-chave: GROUP BY, COUNT, CAST, DATE, DATETIME

select
    date_format(datahora, '%d/%m/%y') as DIA, 
    count(date(datahora)) as LIGAÇÕES
from ligacoes
group by date(datahora)
order by datahora