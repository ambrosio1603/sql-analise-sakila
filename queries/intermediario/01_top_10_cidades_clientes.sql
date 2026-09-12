-- Pergunta de Negócio: Identificar as 10 cidades com mais clientes cadastrados.
-- Comandos utilizados: SELECT, JOIN, GROUP BY, COUNT, ORDER BY, LIMIT

SELECT 
    ci.city AS cidade, 
    COUNT(c.customer_id) AS total_clientes
FROM 
    customer c
JOIN 
    address a ON c.address_id = a.address_id
JOIN 
    city ci ON a.city_id = ci.city_id
GROUP BY 
    ci.city
ORDER BY 
    total_clientes DESC
LIMIT 10;