-- Use the `ref` function to select from other models

select *
from "web_scraper"."books"."my_first_dbt_model"
where id = 1