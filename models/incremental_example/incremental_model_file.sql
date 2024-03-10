{{
    config(
        materialized='incremental'
    )
}}

select
    *

from dbo.tst

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  -- (uses >= to include records whose timestamp occurred since the last run of this model)
  where DT >= (select max(DT) from {{ this }})

{% endif %}