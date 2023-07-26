WITH source AS (

    SELECT * from {{ source('northwind_data', 'order_details_status') }}

)

select * from source