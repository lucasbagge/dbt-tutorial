WITH source AS (

    SELECT * from {{ source('northwind_data', 'order_details') }}

)

select 
    * 
    , CURRENT_TIMESTAMP() AS ingestion_timestamp
from source
