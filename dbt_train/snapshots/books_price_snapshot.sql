{% snapshot books_price_snapshot %}

{{ 
    config(
        target_schema='snapshots',
        unique_key='id',
        strategy='check',
        check_cols=['price']
    ) 
}}

select
    id,
    title,
     price,
    category
from {{ source('public', 'books') }}

{% endsnapshot %}