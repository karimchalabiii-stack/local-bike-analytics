select
    city,
    email,
    phone,
    state,
    street,
    zip_code,
    last_name,
    first_name,
    customer_id
from {{ source('raw_local_bike', 'customers') }}