select
    city,
    email,
    phone,
    state,
    street,
    store_id,
    zip_code,
    store_name
from {{ source('raw_local_bike', 'stores') }}