SELECT 
    store_id, 
    city, 
    CONCAT(ROUND((SUM(isu) / 1000), 2), 'K') AS Incremental_Sold_Unit 
FROM 
    revenue_ir_isu
GROUP BY 
    store_id, 
    city
ORDER BY 
    SUM(isu) ASC
LIMIT 10;
