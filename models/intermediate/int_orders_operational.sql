SELECT ordmar.*
, ship.shipping_fee
, ship.logcost
, ship.ship_cost
, (ordmar.margin + ship.shipping_fee - ship.ship_cost - ship.logcost) AS Operational_margin
FROM {{ ref('int_orders_margin') }} AS ordmar
JOIN {{ ref('stg_raw__ship') }} AS ship
ON ordmar.orders_id=ship.orders_id