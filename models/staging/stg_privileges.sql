WITH source AS (

    SELECT * from {{ source('northwind_data', 'privileges') }}

)

select 
    * 
    , CURRENT_TIMESTAMP() AS ingestion_timestamp
from source
