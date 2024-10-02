
SELECT 
    product_name, 
    category, 
    promo_type,
    ROUND((SUM(IR) / SUM(revenue_before_promo) * 100), 2) AS revenue_incremental_percentage,
    ROUND((SUM(isu) / SUM(`quantity_sold(before_promo)`) * 100), 2) AS sold_qty_incremental_percentage
FROM 
    revenue_ir_isu
GROUP BY 
    product_name, 
    category, 
    promo_type
ORDER BY 
    revenue_incremental_percentage DESC,
    sold_qty_incremental_percentage DESC;
