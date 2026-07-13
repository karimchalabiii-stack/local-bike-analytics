select
    category_id,
    category_name
from {{ source('raw_local_bike', 'categories') }}