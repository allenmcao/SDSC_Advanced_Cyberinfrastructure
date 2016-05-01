--Creates a view with counts of the top 10 roles

CREATE OR REPLACE VIEW top_10_user_roles AS SELECT 
    CASE WHEN name LIKE 'Approves%' THEN 'Approves Specific Data' ELSE name END AS name
    , COUNT(*)
FROM users_rehs JOIN person_role ON uid=person_id
JOIN roles on role_id=id
GROUP BY name
ORDER BY count DESC limit 10;

--Creates a view that replaces the bottom with 'Other'

CREATE OR REPLACE VIEW other_user_roles AS SELECT
CASE
WHEN name NOT IN (SELECT name FROM top_10_user_roles) THEN 'Other'
ELSE name END AS name,
COUNT(*)
FROM users_rehs JOIN person_role ON uid=person_id
JOIN roles on role_id=id
GROUP BY name
ORDER BY count DESC;

--
SELECT DISTINCT name,
CASE
WHEN name='Other' THEN (SELECT SUM(count)
FROM other_user_roles
WHERE name='Other') 
ELSE count END AS count
FROM other_user_roles
ORDER BY count DESC;

