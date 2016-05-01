--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Name: dqa_download_log; Type: VIEW; Schema: public; Owner: teamuser
--

CREATE VIEW dqa_download_log AS
 SELECT download_record.id AS download_record_id,
    download_record.package_name AS pid,
    download_record.username,
    person.email,
    person.city,
    person.province,
    person.country,
    download_record.hostname,
    download_record.create_date,
    download_record.download_status,
    download_record_download_item_record.id AS download_record_download_item_record_id,
    download_record_download_item_record.download_item_record_id,
    download_item_record.site_id,
    download_item_record.block_id,
    download_item_record.protocol_id,
    download_item_record.begin_time,
    download_item_record.end_time,
    download_item_record.genus,
    download_item_record.species,
    download_item_record.photos_included,
    download_item_record.photo_id,
    download_item_record.dataproducts_name,
    download_data_size.total_data_size,
    download_data_size.create_time AS finished_time,
    download_email_log_group_by.emailed_time,
    download_email_log_group_by.url,
    download_record.purpose
   FROM (((download_record
   LEFT JOIN download_data_size ON (((download_data_size.package_id)::text = (download_record.package_name)::text)))
   LEFT JOIN ( SELECT max(download_email_log."time") AS emailed_time,
       download_email_log.url,
       download_email_log.pkg_id
      FROM download_email_log
     GROUP BY download_email_log.url, download_email_log.pkg_id) download_email_log_group_by ON (((download_data_size.package_id)::text = (download_email_log_group_by.pkg_id)::text)))
   LEFT JOIN person ON (((download_record.username)::text = (person.username)::text))),
    download_record_download_item_record,
    download_item_record
  WHERE ((download_record.id = download_record_download_item_record.download_record_id) AND (download_item_record.id = download_record_download_item_record.download_item_record_id))
  ORDER BY download_record.id DESC;


ALTER TABLE public.dqa_download_log OWNER TO teamuser;

--
-- PostgreSQL database dump complete
--

