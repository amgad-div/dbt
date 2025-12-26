
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select available_quantity
from "web_scraper"."books_books_silver"."stg_books"
where available_quantity is null



  
  
      
    ) dbt_internal_test