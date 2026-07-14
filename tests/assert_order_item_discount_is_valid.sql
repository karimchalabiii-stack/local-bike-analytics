select
    order_item_sk,
    discount
from {{ ref('stg_order_items') }}
where discount < 0
   or discount > 1