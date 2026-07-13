select
    format('%s-%s', store_id, product_id) as stock_sk,
    store_id,
    product_id,
    quantity
from {{ source('raw_local_bike', 'stocks') }}