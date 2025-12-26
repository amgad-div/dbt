
  create view "web_scraper"."books_books"."dim_books_price_history__dbt_tmp"
    
    
  as (
    select
    id as book_id,
    title,
    category,
    price,
    price_excl_tax,
    price_incl_tax,
    dbt_valid_from,
    dbt_valid_to
from "web_scraper"."snapshots"."books_price_snapshot"
  );