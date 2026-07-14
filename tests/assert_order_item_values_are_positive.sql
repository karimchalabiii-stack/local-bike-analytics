select
    order_item_sk,
    quantity,
    list_price
from {{ ref('stg_order_items') }}
where quantity <= 0
   or list_price <= 0