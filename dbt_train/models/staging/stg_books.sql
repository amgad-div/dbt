select
    id as book_id,
    title,
     price,
    case
        when rating = '1' then 'One'
        when rating = '2' then 'Two'
        when rating = '3' then 'Three'
        when rating = '4' then 'Four'
        when rating = '5' then 'Five'
        else null
    end as rating,
    category,
    upc,
    price_excl_tax,
    price_incl_tax,
    available_quantity,
    image_url,
    detail_url,
    description
from {{ source('public', 'books') }}
