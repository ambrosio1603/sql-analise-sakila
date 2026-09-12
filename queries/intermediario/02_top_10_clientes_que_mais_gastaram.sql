-- Pergunta de Negócio: Listar os 10 clientes com maior valor total gasto.
-- Comandos utilizados: SELECT, JOIN, GROUP BY, SUM, ORDER BY, LIMIT

SELECT 
    c.first_name AS nome, 
    c.last_name AS sobrenome, 
    SUM(p.amount) AS total_gasto
FROM 
    customer c
JOIN 
    payment p ON c.customer_id = p.customer_id
GROUP BY 
    c.customer_id, c.first_name, c.last_name
ORDER BY 
    total_gasto DESC
LIMIT 10;