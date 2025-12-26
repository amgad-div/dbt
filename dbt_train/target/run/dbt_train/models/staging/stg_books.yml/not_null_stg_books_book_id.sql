
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select book_id
from "web_scraper"."books_books_silver"."stg_books"
where book_id is null



  
  
      
    ) dbt_internal_test