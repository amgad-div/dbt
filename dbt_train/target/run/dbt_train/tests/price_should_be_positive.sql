
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  select *
from "web_scraper"."books_books_gold"."dim_books"
where price <= 0
  
  
      
    ) dbt_internal_test