-- Pergunta de Negócio: Identificar os 10 filmes com maior valor de aluguel.
-- Comandos utilizados: SELECT, FROM, ORDER BY, LIMIT

SELECT 
    title, 
    rental_rate
FROM 
    film
ORDER BY 
    rental_rate DESC
LIMIT 10;