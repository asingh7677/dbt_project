
{{ config(materialized='view') }}

with source_data as (

    select * from car

)

select *
from source_data

