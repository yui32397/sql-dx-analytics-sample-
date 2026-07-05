-- ==============================================================================
-- レベル2: グループごとの集計（GROUP BY, SUM, COUNT）
-- 【ビジネス要求】各四半期（quarter）ごとの総売上高、アクティブ会員数、および客単価（平均購入金額）を算出
-- ==============================================================================

SELECT 
    quarter,
    SUM(revenue) AS total_revenue,
    COUNT(DISTINCT user_id) AS active_users,
    ROUND(SUM(revenue) / COUNT(DISTINCT user_id), 2) AS purchase_price
FROM 
    sbux_sales_data
GROUP BY 
    quarter
ORDER BY 
    quarter ASC;

