
    
    

with all_values as (

    select
        rating as value_field,
        count(*) as n_records

    from "web_scraper"."books_books_silver"."stg_books"
    group by rating

)

select *
from all_values
where value_field not in (
    'One','Two','Three','Four','Five'
)


