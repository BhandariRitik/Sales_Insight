select 
 campaign_name, 
 concat(round(sum(revenue_before_promo)/1000000,2), "M") as revenue_before_promo,
 concat(round(sum(revenue_after_promo)/1000000,2), "M") as revenue_after_promo
from 
 revenue_ir_isu
group by 
 campaign_name;
