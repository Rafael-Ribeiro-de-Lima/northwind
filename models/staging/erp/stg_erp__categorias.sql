with
    fonte_categorias as (
        select *
        from {{ source('erp_northwind', 'category') }}

    )

select *
from fonte_categorias