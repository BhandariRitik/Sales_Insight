WITH cte1 AS (
    SELECT 
        product_name, 
        category,
        ROUND((SUM(IR) / SUM(revenue_before_promo) * 100), 2) AS ir_pct
    FROM 
        revenue_ir_isu
    GROUP BY 
        product_name, 
        category
)
SELECT 
    * 
FROM 
    cte1
ORDER BY 
    ir_pct DESC
LIMIT 5;
