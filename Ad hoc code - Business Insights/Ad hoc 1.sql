SELECT DISTINCT 
    product_name, 
    product_code, 
    promo_type, 
    base_price 
FROM 
    revenue_ir_isu 
WHERE 
    promo_type = 'BOGOF' 
    AND base_price > 500;
