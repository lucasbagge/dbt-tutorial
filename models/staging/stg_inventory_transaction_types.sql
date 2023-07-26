WITH source AS (

    SELECT * from {{ source('northwind_data', 'inventory_transaction_types') }}

)

select * from source