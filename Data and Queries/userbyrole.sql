SELECT name, description, count(*)
FROM users_rehs JOIN person_role ON uid=person_id
JOIN roles on role_id=id
GROUP BY name, description
ORDER BY count;