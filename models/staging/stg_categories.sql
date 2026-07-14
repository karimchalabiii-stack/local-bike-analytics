select
    safe_cast(category_id as int64) as category_id,
    category_name
from {{ source('raw_local_bike', 'categories') }}