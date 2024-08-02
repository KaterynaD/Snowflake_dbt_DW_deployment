{{ config(materialized='incremental',
  unique_key=['policy_uniqueid']) }}



with data as 
(
select 
distinct
 {{ dbt_utils.generate_surrogate_key(['stg.systemid']) }} as policy_id
 ,coalesce(stg.systemid,'~') as  policy_uniqueid
 ,coalesce(stg.policynumber,'~') as  policynumber
 ,coalesce(stg.effectivedate,'1900-01-01') as  effectivedate
 ,coalesce(stg.expirationdate,'1900-01-01') as  expirationdate
 ,coalesce(stg.subtypecd,'~') as subtypecd
 ,coalesce(stg.altsubtypecd,'~') as altsubtypecd 
from {{ source('SPINN_stg', 'BasicPolicy') }} stg

{% if is_incremental() %}

where {{ incremental_condition() }}

{% else %}

where  {{ full_load_condition() }}

{% endif %}


)


select 
  policy_id
 ,policy_uniqueid
 ,policynumber
 ,effectivedate
 ,expirationdate
 ,subtypecd
 ,altsubtypecd 
from data