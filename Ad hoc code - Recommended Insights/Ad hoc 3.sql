SELECT 
    promo_type, 
    CONCAT(ROUND((SUM(ir) / 1000000), 2), 'M') AS incremental_revenue 
FROM 
    revenue_ir_isu
GROUP BY 
    promo_type
ORDER BY 
    SUM(ir) DESC
LIMIT 2;
