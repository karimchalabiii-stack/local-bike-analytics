select
    quantity,
    store_id,
    product_id
from {{ source('raw_local_bike', 'stocks') }}