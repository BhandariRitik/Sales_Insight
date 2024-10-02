WITH cte1 AS (
    SELECT  
        category, 
        SUM(`quantity_sold(before_promo)`) AS total_qty_sold_before_promo, 
        SUM(`quantity_sold(after_promo)`) AS total_qty_sold_after_promo,
        ROUND((SUM(isu) / SUM(`quantity_sold(before_promo)`) * 100), 2) AS isu_pct
    FROM 
        revenue_ir_isu
    WHERE 
        campaign_name = 'Diwali'
    GROUP BY  
        category
)
SELECT 
    *, 
    RANK() OVER (ORDER BY isu_pct DESC) AS ranking
FROM 
    cte1;
