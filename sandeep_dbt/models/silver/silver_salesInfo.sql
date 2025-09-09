with sales as 
(
    select sales_id,product_sk,customer_sk,
    {{multiply('unit_price','quantity')}} as calculated_gross_amount,
    gross_amount,
    payment_method
    from {{ref('bronze_sales')}}
),
product as 
(
    select product_sk,
    category
    from {{ref('bronze_products')}}
),
customer as 
(
    select customer_sk,
    gender
    from {{ref('bronze_customers')}}

),
joined_query as
(


select 
    sales.sales_id,
    sales.gross_amount,
    sales.payment_method,
    product.category,
    customer.gender
from sales 
left join product on sales.product_sk = product.product_sk
left join customer on sales.customer_sk = customer.customer_sk


)
select 
category,
gender,
sum(gross_amount) as total_sales_amount
 from joined_query
 group by 1,2
 order by 3 desc

