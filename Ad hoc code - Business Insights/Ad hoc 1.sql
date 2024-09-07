select 
  distinct(product_name), 
  product_code, 
  promo_type, 
  base_price 
from 
  revenue_ir_isu 
where 
  promo_type = 'BOGOF' 
  and base_price > 500;
