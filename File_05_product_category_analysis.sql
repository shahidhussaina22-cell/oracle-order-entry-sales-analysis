-- Project: Oracle OE Sales Analysis

-- Objective: Identify top 5 products by revenue in each category

WITH product_revenue AS (
    SELECT
        C.CATEGORY_ID,
        C.CATEGORY_NAME,
        P.PRODUCT_ID,
        P.PRODUCT_NAME,
        SUM(O.UNIT_PRICE * O.QUANTITY) AS TOTAL_REVENUE
    FROM OE.ORDER_ITEMS O
    JOIN OE.PRODUCT_INFORMATION P
        ON O.PRODUCT_ID = P.PRODUCT_ID
    JOIN OE.CATEGORIES_TAB C
        ON P.CATEGORY_ID = C.CATEGORY_ID
    GROUP BY
        C.CATEGORY_ID,
        C.CATEGORY_NAME,
        P.PRODUCT_ID,
        P.PRODUCT_NAME
),
ranked_products AS (
    SELECT
        CATEGORY_ID,
        CATEGORY_NAME,
        PRODUCT_ID,
        PRODUCT_NAME,
        TOTAL_REVENUE,
        DENSE_RANK() OVER (
            PARTITION BY CATEGORY_ID
            ORDER BY TOTAL_REVENUE DESC
        ) AS PRODUCT_RANK
    FROM product_revenue
)
SELECT
    CATEGORY_ID,
    CATEGORY_NAME,
    PRODUCT_ID,
    PRODUCT_NAME,
    ROUND(TOTAL_REVENUE, 2) AS TOTAL_REVENUE,
    PRODUCT_RANK
FROM ranked_products
WHERE PRODUCT_RANK <= 5
ORDER BY CATEGORY_ID, PRODUCT_RANK, PRODUCT_NAME;
