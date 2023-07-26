WITH source AS (

    SELECT * from {{ source('northwind_data', 'orders_tax_status') }}

)

select * from source