select
    id as book_id,
    title,
    category,
    price,
    price_excl_tax,
    price_incl_tax,
    dbt_valid_from
from {{ ref('books_price_snapshot') }}
