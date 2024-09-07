/* product and category analysis */

select   
 product_name, 
 category,
 concat(round((sum(isu)/1000),2), 'K') as incremental_sold_qty
from 
 revenue_ir_isu
group by 
 category, 
 product_name 
order by 
 round((sum(isu)/1000),2) desc
limit 5;