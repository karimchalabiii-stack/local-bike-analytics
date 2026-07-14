select
    order_item_sk as sales_line_sk,
    order_id,
    item_id,

    product_id,
    customer_id,
    store_id,
    staff_id,

    order_status,
    order_date,
    required_date,
    shipped_date,

    quantity,
    sale_unit_list_price,
    discount_rate,

    round(
        quantity * sale_unit_list_price * discount_rate,
        2
    ) as discount_amount,

    round(
        quantity * sale_unit_list_price * (1 - discount_rate),
        2
    ) as net_revenue

from {{ ref('int_order_lines') }}