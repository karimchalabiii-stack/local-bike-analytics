select
    format('%s-%s', order_id, item_id) as order_item_sk,
    order_id,
    item_id,
    product_id,
    quantity,
    list_price,
    discount
from {{ source('raw_local_bike', 'order_items') }}