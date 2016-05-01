CREATE OR REPLACE VIEW edu_grouped_users_tmp AS SELECT 
CASE
WHEN domain IS NULL THEN 'No domain' 
WHEN domain LIKE '%.edu' THEN 'Educational Domain'
WHEN domain LIKE 'yahoo%' THEN 'yahoo.com'
ELSE domain END AS domain,
COUNT(*)
FROM users_rehs
GROUP BY domain
ORDER BY count DESC;

CREATE OR REPLACE VIEW edu_grouped_users AS SELECT DISTINCT domain,
CASE
WHEN domain='Educational Domain' THEN (SELECT SUM(count)
FROM edu_grouped_users_tmp
WHERE domain='Educational Domain') 
WHEN domain='yahoo.com' THEN (SELECT SUM(count)
FROM edu_grouped_users_tmp
WHERE domain='yahoo.com') 
ELSE count END AS count
FROM edu_grouped_users_tmp
ORDER BY count DESC;

CREATE OR REPLACE VIEW edu_grouped_users_top10 AS SELECT 
domain, count
FROM edu_grouped_users
GROUP BY domain, count
ORDER BY count DESC limit 10;

SELECT *
FROM edu_grouped_users_top10
UNION
SELECT 'Other', (SELECT sum(count) FROM edu_grouped_users WHERE domain NOT IN (SELECT domain from edu_grouped_users_top10))
ORDER BY count DESC;