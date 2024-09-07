/* product and category analysis */

with totalrevenue as (
 select 
  product_name,
  sum(ir) as total_revenue
 from 
  revenue_ir_isu
 group by  
  product_name
),

format_data  as (
select 
 product_name,
 concat(round(sum(total_revenue)/1000000,2), "M") as incremental_revenue,
 total_revenue
from 
 totalrevenue
group by 
 product_name
)
(
 select 
  product_name, 
  incremental_revenue
 from 
  format_data
 order by 
  total_revenue desc
limit 3
)
union
(
 select 
  product_name, 
  incremental_revenue
 from 
  format_data
 order by 
  total_revenue asc
limit 3
);