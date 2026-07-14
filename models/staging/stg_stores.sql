select
    city,
    email,
    phone,
    state,
    street,
    safe_cast(store_id as int64) as store_id,
    safe_cast(zip_code as string) as zip_code,
    store_name
from {{ source('raw_local_bike', 'stores') }}