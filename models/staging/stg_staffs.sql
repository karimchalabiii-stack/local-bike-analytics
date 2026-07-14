select
    email,
    phone,
    safe_cast(active as int64) as active,
    safe_cast(staff_id as int64) as staff_id,
    safe_cast(store_id as int64) as store_id,
    last_name,
    first_name,
    safe_cast(manager_id as int64) as manager_id
from {{ source('raw_local_bike', 'staffs') }}