select
    brand_id,
    brand_name
from {{ source('raw_local_bike', 'brands') }}