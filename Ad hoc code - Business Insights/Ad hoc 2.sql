SELECT 
    city, 
    COUNT(store_id) AS count_of_stores 
FROM 
    dim_stores 
GROUP BY 
    city 
ORDER BY 
    count_of_stores DESC;
