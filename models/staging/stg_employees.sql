WITH source AS (

    SELECT * from {{ source('northwind_data', 'employees') }}

)

select 
    * 
    , CURRENT_TIMESTAMP() AS ingestion_timestamp
from source
