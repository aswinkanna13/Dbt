with raw as (
    select *
    from `dbtproject-395506.ga4_demo.events_20210131`
)
select
    event_date,
    event_timestamp,
    user_pseudo_id,
    event_name,
    traffic_source.source as source,
    traffic_source.medium as medium,
    event_params.value.string_value as page
from raw
