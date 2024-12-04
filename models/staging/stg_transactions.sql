with transactions as (
    select 
        *
    from 
        {{ source("dbo","transactions") }}
)

select * from transactions