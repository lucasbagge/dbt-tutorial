WITH source AS (

    SELECT * from {{ source('northwind_data', 'orders') }}

)

select * from source