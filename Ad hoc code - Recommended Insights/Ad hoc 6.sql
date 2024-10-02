SELECT   
    product_name, 
    category,
    CONCAT(ROUND((SUM(isu) / 1000), 2), 'K') AS incremental_sold_qty
FROM 
    revenue_ir_isu
GROUP BY 
    category, 
    product_name 
ORDER BY 
    ROUND((SUM(isu) / 1000), 2) DESC
LIMIT 5;
