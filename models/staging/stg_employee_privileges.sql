WITH source AS (

    SELECT * from {{ source('northwind_data', 'employee_privileges') }}

)

select * from source