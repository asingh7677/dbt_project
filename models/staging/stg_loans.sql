with loans as (
    select 
        *
    from 
        {{ source("dbo","loans") }}
)

select * from loans