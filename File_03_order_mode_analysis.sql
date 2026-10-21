-- Project: Oracle OE Sales Analysis

-- Objective: Compare online and direct order performance

SELECT
    ORDER_MODE,
    ROUND(SUM(ORDER_TOTAL), 2) AS REVENUE,

    ROUND(
        SUM(ORDER_TOTAL)
        / NULLIF(SUM(SUM(ORDER_TOTAL)) OVER (), 0) * 100,
        2
    ) AS REVENUE_PERCENT,

    COUNT(DISTINCT ORDER_ID) AS ORDER_COUNT,

    ROUND(
        COUNT(DISTINCT ORDER_ID)
        / NULLIF(
            SUM(COUNT(DISTINCT ORDER_ID)) OVER (), 0
        ) * 100,
        2
    ) AS ORDER_COUNT_PERCENT

FROM OE.ORDERS
GROUP BY ORDER_MODE
ORDER BY REVENUE DESC;