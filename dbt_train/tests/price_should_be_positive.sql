select *
from {{ ref('dim_books') }}
where price <= 0
