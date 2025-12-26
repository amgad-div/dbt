
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select dbt_valid_from
from "web_scraper"."snapshots"."books_price_snapshot"
where dbt_valid_from is null



  
  
      
    ) dbt_internal_test