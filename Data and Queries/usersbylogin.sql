CREATE OR REPLACE VIEW logins AS SELECT CASE WHEN login=0 THEN 'No Login'
ELSE to_char(date(to_timestamp(login)),'YYYY-MM') END as login FROM users_rehs;

/*SELECT CASE WHEN login=0 THEN 'No Login'
ELSE to_char(date(to_timestamp(login)),'YYYY-MM') END as login, COUNT(*) as bucket
FROM users_rehs
GROUP BY login;*/

SELECT login, COUNT(*) as bucket
FROM logins
GROUP BY login
ORDER BY login;