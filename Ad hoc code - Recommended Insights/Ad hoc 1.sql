SELECT 
    store_id, 
    city, 
    CONCAT(ROUND((SUM(ir) / 1000000), 2), 'M') AS Incremental_Revenue 
FROM 
    revenue_ir_isu
GROUP BY 
    store_id, 
    city
ORDER BY 
    SUM(ir) DESC
LIMIT 10;
