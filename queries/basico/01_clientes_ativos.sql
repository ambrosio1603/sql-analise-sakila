-- Pergunta de Negócio: Listar clientes ativos para campanha de marketing.
-- Comandos utilizados: SELECT, FROM, WHERE

SELECT 
    first_name, 
    last_name, 
    email
FROM 
    customer
WHERE 
    active = 1;