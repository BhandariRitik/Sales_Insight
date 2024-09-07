with cte1 as (
 select 
  product_name, 
  category,
  round((sum(IR)/sum(revenue_before_promo) * 100),2) as ir_pct
from 
  revenue_ir_isu
group by 
  Product_name, 
  category
)
select 
 * 
from 
 cte1
order by 
 ir_pct desc
limit 5;
