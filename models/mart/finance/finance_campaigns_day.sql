{{config(materialized='view')}}

SELECT 
 finday.*
, (finday.Operational_margin - ads_cost) AS ads_margin
, campday.ads_cost
, campday.ads_impression
, campday.ads_click
FROM {{ ref('finance_days') }} AS finday
JOIN {{ ref("int_campaigns_day") }} AS campday
USING(date_date)
ORDER BY date_date