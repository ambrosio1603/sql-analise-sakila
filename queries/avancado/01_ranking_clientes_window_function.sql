-- Pergunta de Negócio: Criar um ranking dos clientes com base no total gasto.
-- Comandos utilizados: SELECT, JOIN, GROUP BY, SUM, RANK() OVER

SELECT 
    c.first_name AS nome, 
    c.last_name AS sobrenome, 
    SUM(p.amount) AS total_gasto,
    RANK() OVER (ORDER BY SUM(p.amount) DESC) AS posicao_ranking
FROM 
    customer c
JOIN 
    payment p ON c.customer_id = p.customer_id
GROUP BY 
    c.customer_id, c.first_name, c.last_name
ORDER BY 
    posicao_ranking
LIMIT 20;