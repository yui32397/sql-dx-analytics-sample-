-- ==============================================================================
-- レベル4: 共通テーブル式と条件分岐（WITH句, CASE WHEN）
-- 【ビジネス要求】ユーザーごとの平均購入金額に応じて、ロイヤル/ミドル/ライトの3クラスに区分して会員数を集計
-- ==============================================================================

WITH user_summary AS (
    SELECT 
        user_id,
        SUM(revenue) / COUNT(revenue) AS avg_spend
    FROM 
        sbux_sales_data
    GROUP BY 
        user_id
)
SELECT 
    CASE 
        WHEN avg_spend >= 5000 THEN 'ロイヤル会員'
        WHEN avg_spend >= 2000 THEN 'ミドル会員'
        ELSE 'ライト会員'
    END AS user_class,
    COUNT(user_id) AS user_count
FROM 
    user_summary
GROUP BY 
    1
ORDER BY 
    user_count DESC;

