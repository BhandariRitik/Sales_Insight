/* Store performance analysis */

select 
 store_id, 
 city, 
 concat(round((sum(isu)/1000),2), 'K') as Incremental_Sold_unit
from 
 revenue_ir_isu
group by 
 store_id, 
 city
order by 
 sum(isu) asc
limit 10;