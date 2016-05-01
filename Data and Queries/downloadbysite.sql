/*CREATE OR REPLACE VIEW downloads_siteprotocol AS 
SELECT site_name, (CASE WHEN dataproducts_name LIKE 'Lidar%' THEN 'Lidar' ELSE dataproducts_name END)AS protocol, latitude, longitude, COUNT(*) as downloads
FROM dqa_download_log
JOIN sites_team ON (dqa_download_log.site_id = sites_team.site_id)
WHERE dataproducts_name IS NOT NULL
GROUP BY site_name, protocol, latitude, longitude
UNION 
SELECT site_name, (CASE WHEN protocol_name = 'Climate' THEN (protocol_name || ' ' || protocols_team.protocol_version || '.0') ELSE protocol_name END) AS protocol, latitude, longitude, COUNT(*) as downloads
FROM dqa_download_log
JOIN sites_team ON (dqa_download_log.site_id = sites_team.site_id)
JOIN protocols_team ON (dqa_download_log.protocol_id = protocols_team.protocol_id)
GROUP BY site_name, latitude, longitude, protocol
ORDER BY site_name, protocol;*/

/*CREATE OR REPLACE VIEW downloads_siteprotocol_grouped AS 
SELECT site_name, (CASE 
WHEN dataproducts_name LIKE 'Lidar%' THEN 'Lidar' 
WHEN dataproducts_name LIKE 'Climate%' THEN 'Climate' 
WHEN dataproducts_name LIKE 'Vegetation%' THEN 'Vegetation'
ELSE dataproducts_name END)AS protocol, latitude, longitude, COUNT(*) as downloads
FROM dqa_download_log
JOIN sites_team ON (dqa_download_log.site_id = sites_team.site_id)
WHERE dataproducts_name IS NOT NULL
GROUP BY site_name, protocol, latitude, longitude
UNION 
SELECT site_name, CASE 
WHEN protocol_name LIKE 'Climate%' THEN 'Climate' 
WHEN protocol_name LIKE 'Vegetation%' THEN 'Vegetation'
ELSE protocol_name END AS protocol, latitude, longitude, COUNT(*) as downloads
FROM dqa_download_log
JOIN sites_team ON (dqa_download_log.site_id = sites_team.site_id)
JOIN protocols_team ON (dqa_download_log.protocol_id = protocols_team.protocol_id)
GROUP BY site_name, latitude, longitude, protocol
ORDER BY site_name, protocol;*/

--Climate
/*SELECT site_name AS site, protocol, latitude, longitude, SUM(downloads) AS downloads 
FROM downloads_siteprotocol_grouped
WHERE protocol='Climate'
GROUP BY site, protocol, latitude, longitude
ORDER BY site, protocol;*/

--Terrestrial Vertebrae
/*SELECT site_name AS site, protocol, latitude, longitude, SUM(downloads) AS downloads 
FROM downloads_siteprotocol_grouped
WHERE protocol='Terrestrial Vertebrate'
GROUP BY site, protocol, latitude, longitude
ORDER BY site, protocol;*/

--Vegetation
/*SELECT site_name AS site, protocol, latitude, longitude, SUM(downloads) AS downloads 
FROM downloads_siteprotocol_grouped
WHERE protocol='Vegetation'
GROUP BY site, protocol, latitude, longitude
ORDER BY site, protocol;*/

--GIS
/*SELECT site_name AS site, protocol, latitude, longitude, SUM(downloads) AS downloads 
FROM downloads_siteprotocol_grouped
WHERE protocol='GIS'
GROUP BY site, protocol, latitude, longitude
ORDER BY site, protocol;*/