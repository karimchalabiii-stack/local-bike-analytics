select
    staffs.staff_id,
    staffs.first_name,
    staffs.last_name,
    concat(staffs.first_name, ' ', staffs.last_name) as staff_full_name,
    staffs.email,
    staffs.phone,
    staffs.active,
    staffs.store_id,
    stores.store_name,
    staffs.manager_id

from {{ ref('stg_staffs') }} as staffs

left join {{ ref('stg_stores') }} as stores
    on staffs.store_id = stores.store_id