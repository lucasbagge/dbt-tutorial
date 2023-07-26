WITH source AS (

    SELECT * from {{ source('northwind_data', 'inventory_transactions') }}

)

select * from source