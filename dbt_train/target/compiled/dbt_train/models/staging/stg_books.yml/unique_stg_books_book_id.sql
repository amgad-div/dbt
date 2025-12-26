
    
    

select
    book_id as unique_field,
    count(*) as n_records

from "web_scraper"."books_books_silver"."stg_books"
where book_id is not null
group by book_id
having count(*) > 1


