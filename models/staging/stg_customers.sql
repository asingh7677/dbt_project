with customers as (
    select 
        *
    from 
        {{ source("dbo","customers") }}
)

select * from customers