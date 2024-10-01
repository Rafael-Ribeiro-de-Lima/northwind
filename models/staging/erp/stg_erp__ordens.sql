with renomeado as (
    select
        cast(ID as int) as pk_pedido
        , cast(CUSTOMERID as string) as fk_cliente
        , cast(EMPLOYEEID as int) as fk_funcionario
        , cast(SHIPVIA as int) as fk_transportadora
        , cast(ORDERDATE as date) as data_do_pedido
        , cast(REQUIREDDATE as date) as data_requerida
        , cast(SHIPPEDDATE as date) as data_do_envio
        , cast(FREIGHT as numeric) as frete 
        , cast(SHIPNAME as string) as nm_destinatario
        , cast(SHIPCITY as string) as cidade_destinatario
        , cast(SHIPREGION as string) as regiao_destinatario
        , cast(SHIPCOUNTRY as string) as pais_destinatario
    from {{ source('erp_northwind', '_order_') }}
)   

select *
from renomeado*