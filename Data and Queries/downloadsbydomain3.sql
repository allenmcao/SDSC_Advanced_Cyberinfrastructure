CREATE OR REPLACE VIEW edu_grouped_dqa_tmp AS SELECT 
    CASE
    WHEN email IS NULL THEN 'Other' 
    WHEN email LIKE '%.edu' THEN 'Educational Domain'
    WHEN email LIKE 'yahoo%' THEN 'yahoo.com'
    WHEN email LIKE 'teamnetwork.org' THEN 'Other'
    ELSE email END AS email,
COUNT(*)
FROM dqa_download_log 
GROUP BY email
ORDER BY count DESC;

CREATE OR REPLACE VIEW edu_grouped_dqa AS SELECT DISTINCT email,
CASE
WHEN email='Educational Domain' THEN (SELECT SUM(count)
FROM edu_grouped_dqa_tmp
WHERE email='Educational Domain') 
WHEN email='yahoo.com' THEN (SELECT SUM(count)
FROM edu_grouped_dqa_tmp
WHERE email='yahoo.com')
ELSE count END AS count
FROM edu_grouped_dqa_tmp
ORDER BY count DESC;
