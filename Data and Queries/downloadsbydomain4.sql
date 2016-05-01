CREATE OR REPLACE VIEW edu_grouped_dqa_top10 AS SELECT 
email, count
FROM edu_grouped_dqa
GROUP BY email, count
ORDER BY count DESC limit 10;

SELECT *
FROM edu_grouped_dqa_top10
UNION
SELECT 'Other', (SELECT sum(count) FROM edu_grouped_dqa WHERE email NOT IN (SELECT email from edu_grouped_dqa_top30))
ORDER BY count DESC;
