
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select id
from "web_scraper"."snapshots"."books_price_snapshot"
where id is null



  
  
      
    ) dbt_internal_test