WITH source AS (

    SELECT * from {{ source('northwind_data', 'orders_tax_status') }}

)

select 
    * 
    , CURRENT_TIMESTAMP() AS ingestion_timestamp
from source
