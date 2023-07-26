WITH source AS (

    SELECT * from {{ source('northwind_data', 'invoices') }}

)

select * from source