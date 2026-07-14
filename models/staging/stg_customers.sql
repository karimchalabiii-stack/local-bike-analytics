select
    city,
    email,
    phone,
    state,
    street,
    safe_cast(zip_code as string) as zip_code,
    last_name,
    first_name,
    safe_cast(customer_id as int64) as customer_id
from {{ source('raw_local_bike', 'customers') }}