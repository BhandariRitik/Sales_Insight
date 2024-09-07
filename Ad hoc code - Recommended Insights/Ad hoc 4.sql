
/* Promotion type analysis */

select 
 Promo_type, 
 concat(round((sum(isu)/1000000),2), 'M') as incremental_sold_qty
from 
 revenue_ir_isu
group by 
 promo_type
order by 
 sum(ir) asc
limit 2;
