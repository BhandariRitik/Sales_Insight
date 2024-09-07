/* Store performance analysis */

select 
 store_id, 
 city, 
 concat(round((sum(ir)/1000000),2), 'M') as Incremental_Revenue 
from 
 revenue_ir_isu
group by 
 store_id, 
 city
order by 
 sum(ir) desc
limit 10;