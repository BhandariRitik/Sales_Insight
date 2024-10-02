SELECT 
    campaign_name, 
    CONCAT(ROUND(SUM(revenue_before_promo) / 1000000, 2), 'M') AS revenue_before_promo,
    CONCAT(ROUND(SUM(revenue_after_promo) / 1000000, 2), 'M') AS revenue_after_promo
FROM 
    revenue_ir_isu
GROUP BY 
    campaign_name;
