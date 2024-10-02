/*
    Garante que o valor de 2012 é de 226298.5
*/ 

with vendas_em_2012 as (
    select sum(valor_bruto) as total_bruto
    from {{ ref('int_vendas_metricas') }}
    where data_do_pedido between '2012-01-01' and '2012-12-31'
)

select total_bruto
from vendas_em_2012
where total_bruto not between 226298.45 and 226298.55