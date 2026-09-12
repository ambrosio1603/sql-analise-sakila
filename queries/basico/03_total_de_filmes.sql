-- Pergunta de Negócio: Contar o total de filmes cadastrados no catálogo.
-- Comandos utilizados: SELECT, FROM, COUNT

SELECT 
    COUNT(*) AS total_filmes
FROM 
    film;