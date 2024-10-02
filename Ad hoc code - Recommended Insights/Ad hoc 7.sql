WITH totalrevenue AS (
    SELECT 
        product_name,
        SUM(ir) AS total_revenue
    FROM 
        revenue_ir_isu
    GROUP BY  
        product_name
),

format_data AS (
    SELECT 
        product_name,
        CONCAT(ROUND(SUM(total_revenue) / 1000000, 2), 'M') AS incremental_revenue,
        total_revenue
    FROM 
        totalrevenue
    GROUP BY 
        product_name
)

(
    SELECT 
        product_name, 
        incremental_revenue
    FROM 
        format_data
    ORDER BY 
        total_revenue DESC
    LIMIT 3
)
UNION
(
    SELECT 
        product_name, 
        incremental_revenue
    FROM 
        format_data
    ORDER BY 
        total_revenue ASC
    LIMIT 3
);
