WITH source AS (

    SELECT * from {{ source('northwind_data', 'employees') }}

)

select * from source