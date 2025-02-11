SELECT date_date
, COUNT(*) AS nb_transaction
, ROUND(SUM (revenue),2) AS revenue
, ROUND(AVG(revenue),2) AS avg_basket
, ROUND(SUM(margin),2) AS mergin
, ROUND(SUM(Operational_margin),2) AS Operational_margin
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
ORDER BY date_date DESC