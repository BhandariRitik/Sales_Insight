SELECT 
    promo_type, 
    CONCAT(ROUND((SUM(isu) / 1000000), 2), 'M') AS incremental_sold_qty 
FROM 
    revenue_ir_isu
GROUP BY 
    promo_type
ORDER BY 
    SUM(ir) ASC
LIMIT 2;
