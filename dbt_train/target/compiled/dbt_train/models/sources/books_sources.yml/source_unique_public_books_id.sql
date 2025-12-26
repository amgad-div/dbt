
    
    

select
    id as unique_field,
    count(*) as n_records

from "web_scraper"."public"."books"
where id is not null
group by id
having count(*) > 1


