
  
    

  create  table "web_scraper"."books"."available_quantity__dbt_tmp"
  
  
    as
  
  (
    


select *
from web_scraper.books
where id = 4011
  );
  