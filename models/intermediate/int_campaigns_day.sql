SELECT date_date
, SUM(ads_cost) AS ads_cost
, SUM(impression) AS impression
, SUM(click) AS click
FROM {{ ref('int_campaigns_day') }}
GROUP BY date_date
ORDER BY date_date
