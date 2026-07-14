select
    safe_cast(order_id as int64) as order_id,
    safe_cast(staff_id as int64) as staff_id,
    safe_cast(store_id as int64) as store_id,
    safe_cast(order_date as date) as order_date,
    safe_cast(customer_id as int64) as customer_id,
    safe_cast(order_status as int64) as order_status,
    safe_cast(nullif(shipped_date, 'NULL') as date) as shipped_date,
    safe_cast(required_date as date) as required_date
from {{ source('raw_local_bike', 'orders') }}