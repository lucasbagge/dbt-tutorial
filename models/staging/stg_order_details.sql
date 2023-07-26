WITH source AS (

    SELECT * from {{ source('northwind_data', 'order_details') }}

)

select * from source