-- Pergunta de Negócio: Listar atores que participaram de mais de 20 filmes.
-- Comandos utilizados: SELECT, JOIN, GROUP BY, COUNT, HAVING, ORDER BY

SELECT 
    a.first_name AS nome, 
    a.last_name AS sobrenome, 
    COUNT(fa.film_id) AS total_filmes
FROM 
    actor a
JOIN 
    film_actor fa ON a.actor_id = fa.actor_id
GROUP BY 
    a.actor_id, a.first_name, a.last_name
HAVING 
    COUNT(fa.film_id) > 20
ORDER BY 
    total_filmes DESC;