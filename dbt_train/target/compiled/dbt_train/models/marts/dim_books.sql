select
    book_id,
    title,
    category,
    rating,
    price,
    price_excl_tax,
    price_incl_tax,
    available_quantity
from "web_scraper"."books_books_silver"."stg_books"