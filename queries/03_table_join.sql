-- ==============================================================================
-- レベル3: 複数テーブルの結合（LEFT JOIN）
-- 【ビジネス要求】A/Bテストの配信・行動ログに対して会員マスターを結合し、年代別のベーステーブルを作成
-- ==============================================================================

SELECT 
    log.user_id,
    log.group,
    log.converted,
    usr.age_group,
    usr.gender
FROM 
    sbux_ab_test_results AS log
LEFT JOIN 
    sbux_user_master AS usr
ON 
    log.user_id = usr.user_id;

