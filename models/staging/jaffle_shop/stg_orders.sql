select
    order_id as id,
    customer_id as user_id  ,
    order_date,
    status
from {{ source('jaffle_shop', 'orders') }}