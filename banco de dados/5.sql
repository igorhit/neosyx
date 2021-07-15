-- Escrever uma consulta para trazer o período do dia em que a ligação foi realizada (madrugada, manhã, tarde ou noite)
-- a. Palavras-chave: CASE WHEN, DATEPART
-- b. Madrugada: de 00:00 até 05:59:59
-- c. Manhã: de 06:00 até 11:59:59
-- d. Tarde: de 12:00 até 17:59:59
-- e. Noite: de 18:00 até 23:59:59

select
numerocliente as NumeroCliente,
date_format(datahora, '%d/%m/%y - %h:%m') as DataHora,
case
    when time(datahora) >= '00:00:00' and time(datahora) <= '05:59:59' then 'Madrugada'
    when time(datahora) >= '06:00:00' and time(datahora) <= '11:59:59' then 'Manhã'
    when time(datahora) >= '12:00:00' and time(datahora) <= '17:59:59' then 'Tarde'
    else 'Noite'
end Período
from ligacoes
order by datahora