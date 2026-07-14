select
    stock_sk,
    quantity
from {{ ref('stg_stocks') }}
where quantity < 0