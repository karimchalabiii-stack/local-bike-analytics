select
    email,
    phone,
    active,
    staff_id,
    store_id,
    last_name,
    first_name,
    manager_id
from {{ source('raw_local_bike', 'staffs') }}