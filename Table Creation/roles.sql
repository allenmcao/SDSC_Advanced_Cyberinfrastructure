/*
 Navicat Premium Data Transfer

 Source Server         : sip
 Source Server Type    : PostgreSQL
 Source Server Version : 90304
 Source Host           : localhost
 Source Database       : team_2.0_production
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90304
 File Encoding         : utf-8

 Date: 07/01/2014 11:41:11 AM
*/

-- ----------------------------
--  Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."roles";
CREATE TABLE "public"."roles" (
	"id" int4 NOT NULL,
	"name" varchar(200) NOT NULL COLLATE "default",
	"description" text COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."roles" OWNER TO "teamuser";

-- ----------------------------
--  Records of roles
-- ----------------------------
BEGIN;
INSERT INTO "public"."roles" VALUES ('1', 'anonymous user', 'User is not logged into Drupal');
INSERT INTO "public"."roles" VALUES ('2', 'Approves Comments', 'Approves comments on Drupal pages');
INSERT INTO "public"."roles" VALUES ('3', 'Approves Institutions', 'Approves new institutions for institutions_team table used in site config and user profiles');
INSERT INTO "public"."roles" VALUES ('4', 'Approves News and Events', 'Approves new news and events content for Drupal');
INSERT INTO "public"."roles" VALUES ('6', 'Approves Reports (CI)', 'Approves new Drupal CI reports');
INSERT INTO "public"."roles" VALUES ('7', 'Approves Reports (CTFS)', 'Approves new Drupal CTFS reports');
INSERT INTO "public"."roles" VALUES ('8', 'Approves Reports (MBG)', 'Approves new Drupal MBG reports');
INSERT INTO "public"."roles" VALUES ('9', 'Approves Reports (WCS)', 'Approves new Drupal WCS reports');
INSERT INTO "public"."roles" VALUES ('10', 'Approves Reports for Publication', 'Approves all reports for Drupal publication');
INSERT INTO "public"."roles" VALUES ('12', 'authenticated user', 'User is logged into Drupal');
INSERT INTO "public"."roles" VALUES ('16', 'Data Management Admin', null);
INSERT INTO "public"."roles" VALUES ('14', 'Data Download Stats', 'Sees more columns in Gridsphere data download stats');
INSERT INTO "public"."roles" VALUES ('17', 'Data Registration', 'Accesses legacy metacat application linked from myTEAM');
INSERT INTO "public"."roles" VALUES ('19', 'Data Reviewer Admin', 'Admins DQA data');
INSERT INTO "public"."roles" VALUES ('21', 'Hide in Directory', 'Users with special permissions (like siteadmin) that we want to hide in Drupal network member listing');
INSERT INTO "public"."roles" VALUES ('22', 'Network Member', 'Accesses TEAM tools');
INSERT INTO "public"."roles" VALUES ('24', 'Network Spatial Expert', 'Defines spatial data for DQA');
INSERT INTO "public"."roles" VALUES ('25', 'Notify Report Created', 'Gets email when new Drupal report created (e.g. CI quarterly reports)');
INSERT INTO "public"."roles" VALUES ('26', 'Notify Report Published', 'Gets email when Drupal report made public (e.g. CI quarterly report)');
INSERT INTO "public"."roles" VALUES ('27', 'Page Editors', 'Edit Drupal page content');
INSERT INTO "public"."roles" VALUES ('28', 'Sampling Schedule Admin', 'Admins sampling scheduler');
INSERT INTO "public"."roles" VALUES ('29', 'Sampling Scheduler', 'Creates sampling schedules');
INSERT INTO "public"."roles" VALUES ('30', 'Site Manager', 'Maintains site information and accesses site tools and SMT');
INSERT INTO "public"."roles" VALUES ('32', 'Technical Coordinator', 'Facilitates use of TEAM tools and accesses most tools for all sites');
INSERT INTO "public"."roles" VALUES ('33', 'Technical Director', 'Supervises use of TEAM tools and accesses most tools for all sites');
INSERT INTO "public"."roles" VALUES ('34', 'Technical Liaison', 'Accesses most TEAM tools for specific sites');
INSERT INTO "public"."roles" VALUES ('35', 'Upload Data - Brazil', 'Uploads data to Brazil - legacy role');
INSERT INTO "public"."roles" VALUES ('36', 'Upload Data - D.C.', 'Uploads data to D.C. - legacy role');
INSERT INTO "public"."roles" VALUES ('37', 'View Dashboard', 'Accesses dashboard');
INSERT INTO "public"."roles" VALUES ('38', 'Web Master', 'Controls Drupal site');
INSERT INTO "public"."roles" VALUES ('18', 'Data Reviewer', 'Comments or adds notes to data');
INSERT INTO "public"."roles" VALUES ('39', 'Regional Manager', 'For email notifications, less permissive than Technical Liaison');
INSERT INTO "public"."roles" VALUES ('15', 'Data Editor', 'Edits saved data');
INSERT INTO "public"."roles" VALUES ('31', 'Spatial Data Expert', 'Uploads Shapefiles for designing the spatial locations of sampling units; Uploads GPX files for the GPS locations of sampling units');
INSERT INTO "public"."roles" VALUES ('20', 'Data Uploader', 'Uploads and saves new data');
INSERT INTO "public"."roles" VALUES ('13', 'Data Collector', 'Collects and uploads new data');
INSERT INTO "public"."roles" VALUES ('40', 'Taxonomic Expert', 'Clean up protocol data using the data management tool');
INSERT INTO "public"."roles" VALUES ('41', 'Download Endangered Species', 'Registered users who are approved to download endangered species data');
INSERT INTO "public"."roles" VALUES ('42', 'Approves Endangered Species Access', 'Approves requests for data about endangered species');
INSERT INTO "public"."roles" VALUES ('43', 'ESM Site Manager', 'Maintains site information and accesses site tools and SMT for Ecosystem Services Monitoring (ESM) sites');
INSERT INTO "public"."roles" VALUES ('44', 'Notify Endangered Species Access', 'Gets email when there are new requests for endangered species access');
INSERT INTO "public"."roles" VALUES ('23', 'Coordinating Unit', 'TEAM CI staff');
INSERT INTO "public"."roles" VALUES ('45', 'Administrative Liaison', 'To display Administrative Liaisons in Network Member listings');
INSERT INTO "public"."roles" VALUES ('46', 'Institutional Representative', 'Represents TEAM partner at a higher level than Site Manager and has the same site access as a Site Manager');
INSERT INTO "public"."roles" VALUES ('47', 'IT Specialist', 'To display IT Specialists in Network Member listings');
INSERT INTO "public"."roles" VALUES ('48', 'Steering Committee', 'To display Steering Committee members in Network Member listings');
INSERT INTO "public"."roles" VALUES ('49', 'Science Advisory Board', 'To display Science Advisory Board members in Network Member listings');
INSERT INTO "public"."roles" VALUES ('11', 'Approves Sampling Schedule', 'Approves proposed sampling schedules');
INSERT INTO "public"."roles" VALUES ('5', 'Approves Publications', 'Approves new publications for TEAM Drupal bibliography');
INSERT INTO "public"."roles" VALUES ('51', 'wpi_admin_user', 'Wildlife Picture Index (WPI) Admin User');
INSERT INTO "public"."roles" VALUES ('52', 'wpi_registered_user', 'Wildlife Picture Index (WPI) Registered User');
INSERT INTO "public"."roles" VALUES ('50', 'wpi_sme_user', 'Wildlife Picture Index (WPI) Subject Matter Expert (SME) User');
INSERT INTO "public"."roles" VALUES ('53', 'Taxonomic App Expert', 'Expert editor for the taxonomic web application');
INSERT INTO "public"."roles" VALUES ('54', 'Taxonomic App Admin', 'Administrator for the taxonomic web application');
COMMIT;

-- ----------------------------
--  Primary key structure for table roles
-- ----------------------------
ALTER TABLE "public"."roles" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

