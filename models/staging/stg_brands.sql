select
    safe_cast(brand_id as int64) as brand_id,
    brand_name
from {{ source('raw_local_bike', 'brands') }}