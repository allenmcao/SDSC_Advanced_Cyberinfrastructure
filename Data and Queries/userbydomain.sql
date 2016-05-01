--Creates a view with counts of the top 20 domains of users

/*CREATE OR REPLACE VIEW top_20_users_domains AS SELECT 
    CASE
    WHEN domain = '' THEN 'No domain' 
    ELSE domain END AS domain,
COUNT(*)
FROM users_rehs
GROUP BY domain
ORDER BY count DESC limit 20;*/

--Creates a view that replaces the bottom with 'Other'

/*CREATE OR REPLACE VIEW other_users_domains AS SELECT
CASE
WHEN domain IS NULL THEN 'No domain' 
WHEN domain NOT IN (SELECT domain FROM top_20_users_domains) THEN 'Other'
ELSE domain END AS domain,
COUNT(*)
FROM users_rehs
GROUP BY domain
ORDER BY count DESC;*/

--
SELECT DISTINCT domain,
CASE
WHEN domain='Other' THEN (SELECT SUM(count)
FROM other_users_domains
WHERE domain='Other') 
ELSE count END AS count
FROM other_users_domains
ORDER BY count DESC;