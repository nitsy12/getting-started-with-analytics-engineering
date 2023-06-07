with 
orders as (
select  * from {{ref('stg_greenery__orders')}}

)

,addresses as (

    select * from {{ref('stg_greenery__addresses')}}
)
,joined as (

    select order_guid
    ,user_guid
    ,promo_guid
    ,o.address_guid
    ,order_creates_at_utc
    ,order_cost_usd
    ,shipping_cost_usd
    ,order_cost_usd
    ,tracking_guid
    ,shipping_service
    ,estimated_delivery_at_utc
    ,delivered_at_utc
    ,order_status
    ,address
    ,zipcode
    ,state,country
    from order as o
    join addresses as a 
    on o.addresses_guid=a.addresses_guid

)
select * from joined