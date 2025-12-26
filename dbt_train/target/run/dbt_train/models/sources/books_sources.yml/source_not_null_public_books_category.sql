
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select category
from "web_scraper"."public"."books"
where category is null



  
  
      
    ) dbt_internal_test