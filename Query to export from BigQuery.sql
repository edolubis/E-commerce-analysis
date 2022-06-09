SELECT oi.product_id as product_id, oi.order_id as order_id, oi.user_id as user_id,
       oi.sale_price as sale_price, oi.status as status, oi.created_at as created_at, p.name as name,
       p.category as category, u.gender as gender, u.age as age, u.country as country, u.latitude as latitude, u.longitude as longitude
FROM `bigquery-public-data.thelook_ecommerce.order_items` as oi
JOIN `bigquery-public-data.thelook_ecommerce.products` as p 
ON oi.product_id = p.id
JOIN `bigquery-public-data.thelook_ecommerce.users` as u
ON oi.user_id = u.id