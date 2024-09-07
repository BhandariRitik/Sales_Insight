with cte1 as (
 select  
  category, 
  sum(`quantity_sold(before_promo)`) as total_qty_sold_before_promo, 
  sum(`quantity_sold(after_promo)`) as total_qty_sold_after_promo,
  round((sum(isu)/sum(`quantity_sold(before_promo)`) *100),2) as isu_pct
 from 
  revenue_ir_isu
 where 
  campaign_name= "Diwali"
group by  
  category
)
select 
 *, 
 rank() over(order by isu_pct desc) as ranking
from 
 cte1;