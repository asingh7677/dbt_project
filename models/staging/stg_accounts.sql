with accounts as (
    select 
        *
    from 
        {{ source("dbo","accounts") }}
)

select * from accounts