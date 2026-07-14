select
    safe_cast(brand_id as int64) as brand_id,
    safe_cast(list_price as numeric) as list_price,
    safe_cast(model_year as int64) as model_year,
    safe_cast(product_id as int64) as product_id,
    safe_cast(category_id as int64) as category_id,
    product_name
from {{ source('raw_local_bike', 'products') }}