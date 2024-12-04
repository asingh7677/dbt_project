with creditcard as (
    select 
        *
    from 
        {{ source("dbo","creditCards") }}
)

select * from creditcard