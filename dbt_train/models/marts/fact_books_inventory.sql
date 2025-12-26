select
    category,
    count(book_id) as total_books,
    sum(available_quantity) as total_available_quantity,
    avg(price) as avg_price
from {{ ref('dim_books') }}
group by category
