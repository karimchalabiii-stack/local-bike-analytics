with source as (
    select
        safe_cast(store_id as int64) as store_id,
        safe_cast(product_id as int64) as product_id,
        safe_cast(quantity as int64) as quantity
    from {{ source('raw_local_bike', 'stocks') }}
)
select
    format('%d-%d', store_id, product_id) as stock_sk,
    store_id,
    product_id,
    quantity
from source