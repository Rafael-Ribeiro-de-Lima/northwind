with
    funcionarios as (
        select * 
        from {{ ref('stg_erp__funcionarios') }}
    )

    , joined as (
        select 
            funcionarios.*
            , gerentes.nome_funcionario as nome_gerente
        from funcionarios
        left join funcionarios as gerentes
            on funcionarios.fk_gerente = gerentes.pk_funcionario
    )

select * 
from joined
