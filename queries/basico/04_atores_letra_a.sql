-- Pergunta de Negócio: Listar atores cujo primeiro nome começa com a letra 'A'.
-- Comandos utilizados: SELECT, FROM, WHERE, LIKE

SELECT 
    first_name, 
    last_name
FROM 
    actor
WHERE 
    first_name LIKE 'A%';