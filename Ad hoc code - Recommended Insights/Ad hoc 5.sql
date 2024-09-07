/* Promotion type analysis */

select 
 promo_type,
 round((sum(isu)/sum(`quantity_sold(before_promo)`) *100),2) as sold_qty_incremental_percentage,
 round((sum(IR)/sum(revenue_before_promo) * 100),2) as revenue_incremental_percentage
from
 revenue_ir_isu
group by 
 promo_type
order by 
 revenue_incremental_percentage desc,
 sold_qty_incremental_percentage desc;