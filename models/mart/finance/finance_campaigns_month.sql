SELECT date_date
, EXTRACT(MONTH FROM date_date) AS datemonth
, SUM(nb_transactions) AS nb_transactions
, SUM(revenue) AS revenue
, SUM(average_basket) AS average_basket
, SUM(margin) AS margin
, SUM(Operational_margin) AS Operational_margin
, SUM(ads_margin) AS ads_margin
, SuM(ads_cost) AS ads_cost
, SUM(ads_impression) AS ads_impression
, SUM(ads_click) AS ads_click
FROM {{ ref('finance_campaigns_day') }}
GROUP BY datemonth, date_date
ORDER BY date_date DESC
