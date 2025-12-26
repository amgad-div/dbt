select
    book_id,
    title,
    category,
    rating,
    price,
    price_excl_tax,
    price_incl_tax,
    available_quantity
from {{ ref('stg_books') }}
