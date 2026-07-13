select
    item_id,
    discount,
    order_id,
    quantity,
    list_price,
    product_id
from {{ source('raw_local_bike', 'order_items') }}