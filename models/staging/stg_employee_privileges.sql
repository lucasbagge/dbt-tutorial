WITH source AS (

    SELECT * from {{ source('northwind_data', 'employee_privileges') }}

)

select 
    * 
    , CURRENT_TIMESTAMP() AS ingestion_timestamp
from source
