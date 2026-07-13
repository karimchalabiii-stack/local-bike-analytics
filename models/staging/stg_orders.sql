select
    order_id,
    staff_id,
    store_id,
    order_date,
    customer_id,
    order_status,
    shipped_date,
    required_date
from {{ source('raw_local_bike', 'orders') }}