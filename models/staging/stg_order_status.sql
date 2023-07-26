WITH source AS (

    SELECT * from {{ source('northwind_data', 'order_status') }}

)

select * from source