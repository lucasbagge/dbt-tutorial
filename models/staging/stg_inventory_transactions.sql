WITH source AS (

    SELECT * from {{ source('northwind_data', 'inventory_transactions') }}

)

select 
    * 
    , CURRENT_TIMESTAMP() AS ingestion_timestamp
from source
