
    
    



select dbt_valid_from
from "web_scraper"."snapshots"."books_price_snapshot"
where dbt_valid_from is null


