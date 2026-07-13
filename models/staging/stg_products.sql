select
    brand_id,
    list_price,
    model_year,
    product_id,
    category_id,
    product_name
from {{ source('raw_local_bike', 'products') }}