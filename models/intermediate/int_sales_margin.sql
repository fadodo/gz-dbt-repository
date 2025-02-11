
WITH purchase_cost_CTE AS
(
SELECT sales.date_date, sales.orders_id, sales.revenue, sales.quantity, sales.quantity*product.purchase_price AS purchase_cost
FROM {{ ref('stg_raw__sales') }} AS sales
JOIN {{ ref('stg_raw__product') }} AS product
    ON sales.products_id=product.products_id
)

SELECT date_date,orders_id,revenue, quantity, (revenue-purchase_cost) AS margin
FROM purchase_cost_CTE