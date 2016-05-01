--Creates a view with counts of the top 20 domains

/*CREATE OR REPLACE VIEW top_20 AS SELECT 
    CASE
    WHEN email IS NULL THEN 'No domain' 
    ELSE email END AS email,
COUNT(*)
FROM dqa_download_log 
GROUP BY email
ORDER BY count DESC limit 20;*/

--Creates a view that replaces the bottom with 'Other'

/*CREATE OR REPLACE VIEW other AS SELECT
CASE
WHEN email IS NULL THEN 'No domain' 
WHEN email NOT IN (SELECT email FROM top_20) THEN 'Other'
ELSE email END AS email,
COUNT(*)
FROM dqa_download_log
GROUP BY email
ORDER BY count DESC;*/

--
SELECT DISTINCT email,
CASE
WHEN email='Other' THEN (SELECT SUM(count)
FROM other
WHERE email='Other') 
ELSE count END AS count
FROM other
ORDER BY count DESC;

/*SELECT 
    CASE
    WHEN email IS NULL THEN 'No domain' 
    ELSE email END AS email,
COUNT(*)
FROM dqa_download_log 
GROUP BY email
ORDER BY count ASC;*/