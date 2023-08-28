select 
    customer_id as id,
    first_name,
    last_name
from {{ source('jaffle_shop', 'stg_customers') }}