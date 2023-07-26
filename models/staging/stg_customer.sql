WITH source AS (

    SELECT * from {{ source('northwind_data', 'customer') }}

)

select * from source