select 
  city, 
  count(store_id) as count_of_stores 
from 
  dim_stores 
group by 
  city 
order by 
  count_of_stores desc;
