
WITH purchase_cost_CTE AS
(
    SELECT sales.date_date, sales.orders_id, sales.revenue, ROUND((sales.quantity*product.purchase_price),2) AS purchase_cost
    FROM {{ ref('stg_raw__sales')}} AS sales
    JOIN {{ ref('stg_raw__product')}} AS product
    ON sales.products_id=product.products_id
)

SELECT date_date,orders_id,revenue, ROUND((revenue-purchase_cost),2) AS margin
FROM purchae_cost_CTE;