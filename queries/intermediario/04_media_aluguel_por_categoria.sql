-- Pergunta de Negócio: Calcular a média de valor de aluguel por categoria de filme.
-- Comandos utilizados: SELECT, JOIN, GROUP BY, AVG, ORDER BY

SELECT 
    cat.name AS categoria, 
    AVG(f.rental_rate) AS media_aluguel
FROM 
    film f
JOIN 
    film_category fc ON f.film_id = fc.film_id
JOIN 
    category cat ON fc.category_id = cat.category_id
GROUP BY 
    cat.name
ORDER BY 
    media_aluguel DESC;