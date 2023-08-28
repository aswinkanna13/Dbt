select
    payment_id as id,
    order_id as orderid,
    payment_method as paymentmethod,
    status,
    -- amount is stored in cents, convert it to dollars
    amount as amount / 100,
    created_at as created
from {{ source('stripe', 'stg_payment') }}