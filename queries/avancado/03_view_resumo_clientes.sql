-- Pergunta de Negócio: Criar uma View com o resumo consolidado dos clientes.
-- Comandos utilizados: CREATE VIEW, JOIN, GROUP BY

CREATE VIEW vw_resumo_clientes AS
SELECT 
    c.customer_id,
    c.first_name AS nome,
    c.last_name AS sobrenome,
    ci.city AS cidade,
    co.country AS pais,
    SUM(p.amount) AS total_gasto
FROM 
    customer c
JOIN 
    address a ON c.address_id = a.address_id
JOIN 
    city ci ON a.city_id = ci.city_id
JOIN 
    country co ON ci.country_id = co.country_id
JOIN 
    payment p ON c.customer_id = p.customer_id
GROUP BY 
    c.customer_id, c.first_name, c.last_name, ci.city, co.country;