SELECT name, description, count(*)as count
FROM dqa_download_log JOIN person_id_username ON dqa_download_log.username=person_id_username.username
JOIN person_role ON person_id_username.person_id=person_role.person_id
JOIN roles ON roles.id=person_role.role_id
GROUP BY name, description
ORDER BY count DESC;