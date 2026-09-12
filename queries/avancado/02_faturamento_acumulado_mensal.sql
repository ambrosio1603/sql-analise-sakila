-- Pergunta de Negócio: Calcular o faturamento mensal e o acumulado do ano.
-- Comandos utilizados: WITH (CTE), DATE_FORMAT, SUM() OVER

WITH FaturamentoMensal AS (
    SELECT 
        DATE_FORMAT(payment_date, '%Y-%m') AS mes,
        SUM(amount) AS total_mes
    FROM 
        payment
    GROUP BY 
        DATE_FORMAT(payment_date, '%Y-%m')
)
SELECT 
    mes,
    total_mes,
    SUM(total_mes) OVER (ORDER BY mes) AS total_acumulado
FROM 
    FaturamentoMensal
ORDER BY 
    mes;