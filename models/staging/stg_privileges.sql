WITH source AS (

    SELECT * from {{ source('northwind_data', 'privileges') }}

)

select * from source