select
    id as book_id,
    title,
    category,
    price,
    price_excl_tax,
    price_incl_tax,
    dbt_valid_from
from "web_scraper"."snapshots"."books_price_snapshot"