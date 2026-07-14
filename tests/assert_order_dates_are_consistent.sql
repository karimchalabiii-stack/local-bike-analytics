select
    order_id,
    order_date,
    required_date,
    shipped_date
from {{ ref('stg_orders') }}
where required_date < order_date
   or (
       shipped_date is not null
       and shipped_date < order_date
   )