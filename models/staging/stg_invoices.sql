WITH source AS (

    SELECT * from {{ source('northwind_data', 'invoices') }}

)

select 
    * 
    , CURRENT_TIMESTAMP() AS ingestion_timestamp
from source
