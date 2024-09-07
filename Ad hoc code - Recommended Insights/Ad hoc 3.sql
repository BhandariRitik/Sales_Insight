/* Promotion type analysis */

select 
 Promo_type, 
 concat(round((sum(ir)/1000000),2), 'M') as incremental_revenue
from 
 revenue_ir_isu
group by 
 promo_type
order by 
 sum(ir) desc
limit 2;