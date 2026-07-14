select
    order_items.order_item_sk,
    order_items.order_id,
    order_items.item_id,
    order_items.product_id,

    orders.customer_id,
    orders.store_id,
    orders.staff_id,
    orders.order_status,
    orders.order_date,
    orders.required_date,
    orders.shipped_date,

    order_items.quantity,
    order_items.list_price as sale_unit_list_price,
    order_items.discount as discount_rate

from {{ ref('stg_order_items') }} as order_items

inner join {{ ref('stg_orders') }} as orders
    on order_items.order_id = orders.order_id