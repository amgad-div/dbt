
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select price
from "web_scraper"."snapshots"."books_price_snapshot"
where price is null



  
  
      
    ) dbt_internal_test