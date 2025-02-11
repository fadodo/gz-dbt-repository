
WITH purchase_cost_CTE AS
(
    SELECT date_date, orders_id, revenue, quantity*product.purchase_price AS purchase_cost
    FROM {{ ref('stg_raw__product') }} AS sales
    JOIN {{ ref('stg_raw__product') }} AS product
    ON sales.products_id=product.products_id
)

SELECT date_date,orders_id,revenue, (revenue-purchase_cost) AS margin
FROM purchase_cost_CTE;