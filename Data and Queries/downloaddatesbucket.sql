/*select extract(year from (to_timestamp(created)))*100+extract(month from (to_timestamp(created))) AS bucket,
COUNT(*) AS count
FROM users_rehs
GROUP BY bucket
ORDER BY bucket;*/

/*SELECT CAST(SUBSTRING(pid,0,7) AS integer) AS bucket,
       COUNT(*) AS count
FROM   dqa_download_log
GROUP  BY bucket
ORDER BY bucket;*/

/*SELECT to_char(date(to_timestamp(created)), 'YYYY-MM')as date,
COUNT(*) AS count
FROM users_rehs
WHERE created>0
GROUP BY date
ORDER BY date;*/

--select CONCAT(extract(year from create_date)||'-'||extract(month from create_date))
--from dqa_download_log;

/*SELECT to_char(date(create_date), 'YYYY-MM') AS bucket,
       COUNT(*) AS count
FROM   dqa_download_log
GROUP  BY bucket
ORDER BY bucket;*/

/*SELECT to_char(date(create_date), 'YYYY-MM')as date, 0 as registrations, COUNT(*) AS downloads
FROM dqa_download_log
GROUP BY date
UNION
SELECT to_char(date(to_timestamp(created)), 'YYYY-MM') as date, COUNT(*) AS registrations, 0 as downloads
FROM users_rehs
WHERE created>0
GROUP BY date
ORDER BY date;*/

CREATE OR REPLACE VIEW downloads_users AS
(SELECT to_char(date(create_date), 'YYYY-MM')as date, 0 as registrations, COUNT(*) AS downloads
FROM dqa_download_log
GROUP BY date
UNION
SELECT to_char(date(to_timestamp(created)), 'YYYY-MM') as date, COUNT(*) AS registrations, 0 as downloads
FROM users_rehs
WHERE created>0
GROUP BY date
ORDER BY date);

SELECT date, SUM(registrations), SUM(downloads)
FROM downloads_users
GROUP BY date;