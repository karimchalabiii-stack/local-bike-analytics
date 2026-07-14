select
    products.product_id,
    products.product_name,
    brands.brand_name,
    categories.category_name,
    products.model_year,
    products.list_price as product_list_price

from {{ ref('stg_products') }} as products

left join {{ ref('stg_brands') }} as brands
    on products.brand_id = brands.brand_id

left join {{ ref('stg_categories') }} as categories
    on products.category_id = categories.category_id