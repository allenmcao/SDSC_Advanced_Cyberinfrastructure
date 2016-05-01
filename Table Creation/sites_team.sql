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

 Date: 07/01/2014 11:39:40 AM
*/

-- ----------------------------
--  Table structure for sites_team
-- ----------------------------
DROP TABLE IF EXISTS "public"."sites_team";
CREATE TABLE "public"."sites_team" (
	"site_id" int4 NOT NULL,
	"site_name" varchar(200) NOT NULL COLLATE "default",
	"last_event_at" timestamp(6) NULL,
	"last_event_by" int4 NOT NULL,
	"time_zone" varchar(20) COLLATE "default",
	"site_institution_name" varchar(200) COLLATE "default",
	"site_abbv" varchar(3) COLLATE "default",
	"site_status" varchar(25) COLLATE "default",
	"country_id" int4,
	"short_name" varchar(50) COLLATE "default",
	"latitude" float8,
	"longitude" float8,
	"start_date" date
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."sites_team" OWNER TO "teamuser";

-- ----------------------------
--  Records of sites_team
-- ----------------------------
BEGIN;
INSERT INTO "public"."sites_team" VALUES ('4', 'Rio Doce', '2006-08-07 00:00:00', '437', 'UTC-3', null, 'RD', 'disabled', '31', 'Rio Doce', '-19.685543', '-42.562381', null);
INSERT INTO "public"."sites_team" VALUES ('8', 'Masoala', '2009-01-14 00:00:00', '437', null, null, 'MNP', 'disabled', '136', 'Masoala', '-15.71', '50.3', null);
INSERT INTO "public"."sites_team" VALUES ('22', 'Kaeng Krachan', '2009-01-14 00:00:00', '437', null, null, 'KKN', 'disabled', '210', 'T.B.D.', '13.539201', '99.733887', null);
INSERT INTO "public"."sites_team" VALUES ('23', 'Piagaçu-Purus', '2009-01-14 00:00:00', '437', null, null, 'PIP', 'disabled', '31', 'T.B.D.', '-10.6667', '-68.6667', null);
INSERT INTO "public"."sites_team" VALUES ('18', 'Noel Kempff Mercado', '2009-01-14 00:00:00', '437', null, null, 'NKM', 'disabled', '30', 'T.B.D.', '-14.266667', '-60.866667', null);
INSERT INTO "public"."sites_team" VALUES ('16', 'Madidi', '2009-01-14 00:00:00', '437', null, null, 'MAD', 'disabled', '30', 'Madidi', '-14.39', '-68.8', null);
INSERT INTO "public"."sites_team" VALUES ('6', 'Ituri Forest', '2009-01-14 00:00:00', '437', null, null, 'ITF', 'disabled', '40', 'T.B.D.', '1.4368', '28.5826', null);
INSERT INTO "public"."sites_team" VALUES ('29', 'Cocha Cashu - Manu National Park', null, '1', null, null, 'COU', 'active', '168', 'Cocha Cashu', '-11.856389', '-71.721389', '2010-05-01');
INSERT INTO "public"."sites_team" VALUES ('27', 'Barro Colorado Nature Monument - Soberania National Park', null, '1', null, null, 'BCI', 'active', '167', 'BCI', '9.152102', '-79.84648', '2011-01-12');
INSERT INTO "public"."sites_team" VALUES ('1', 'Caxiuanã', '2006-08-07 00:00:00', '437', 'UTC-3', null, 'CX', 'active', '31', 'Caxiuanã', '-1.729167', '-51.473611', '2002-11-13');
INSERT INTO "public"."sites_team" VALUES ('5', 'Volcán Barva', '2006-08-07 00:00:00', '437', 'UTC-6', null, 'VB', 'active', '50', 'Volcán Barva', '10.3028', '-84.0338', '2003-11-28');
INSERT INTO "public"."sites_team" VALUES ('3', 'Manaus', '2006-08-07 00:00:00', '437', 'UTC-4', null, 'MAS', 'active', '31', 'Manaus', '-2.929058', '-59.976408', '2003-11-18');
INSERT INTO "public"."sites_team" VALUES ('10', 'Bukit Barisan', '2009-01-14 00:00:00', '437', null, null, 'BBS', 'active', '99', 'Bukit Barisan', '-5.25', '104.166667', '2010-03-21');
INSERT INTO "public"."sites_team" VALUES ('13', 'Nouabalé Ndoki', '2009-01-14 00:00:00', '437', null, null, 'NNN', 'active', '42', 'Nouabalé Ndoki', '2.518805', '16.595078', '2009-12-04');
INSERT INTO "public"."sites_team" VALUES ('11', 'Nam Kading', '2009-01-14 00:00:00', '437', null, null, 'NAK', 'active', '122', 'Nam Kading', '18.316667', '104', '2009-11-11');
INSERT INTO "public"."sites_team" VALUES ('25', 'Ranomafana', '2009-01-14 00:00:00', '437', null, null, 'RNF', 'active', '136', 'Ranomafana', '-21.1333', '47.4167', '2010-08-18');
INSERT INTO "public"."sites_team" VALUES ('7', 'Bwindi Impenetrable Forest', '2009-01-14 00:00:00', '437', null, null, 'BIF', 'active', '223', 'Bwindi', '-1.080556', '29.661389', '2009-12-14');
INSERT INTO "public"."sites_team" VALUES ('26', 'Udzungwa', '2009-01-14 00:00:00', '437', null, null, 'UDZ', 'active', '221', 'Udzungwa', '-7.8425', '36.891483', '2008-11-09');
INSERT INTO "public"."sites_team" VALUES ('0', 'Not Applicable', null, '1', null, null, null, null, null, 'Not Applicable', null, null, null);
INSERT INTO "public"."sites_team" VALUES ('30', 'Korup National Park', null, '1', null, null, 'KRP', 'active', '47', 'Korup', '5.07389', '8.85472', '2010-07-01');
INSERT INTO "public"."sites_team" VALUES ('28', 'Yanachaga Chimillén National Park', null, '1', null, null, 'YAN', 'active', '168', 'Yanachaga', '-10.493524', '-75.201229', '2010-05-01');
INSERT INTO "public"."sites_team" VALUES ('32', 'Pasoh Forest Reserve', null, '1', null, null, 'PSH', 'active', '152', 'Pasoh', '2.982', '102.313', '2011-01-01');
INSERT INTO "public"."sites_team" VALUES ('19', 'Yasuni', '2009-01-14 00:00:00', '437', null, null, 'YAS', 'active', '63', 'Yasuni', '-0.671306', '-76.4005', '2011-02-11');
INSERT INTO "public"."sites_team" VALUES ('33', 'Rwanda', null, '1', null, null, 'RWA', 'setup', null, 'Rwanda', null, null, null);
INSERT INTO "public"."sites_team" VALUES ('2', 'Central Suriname Nature Reserve', '2006-08-07 00:00:00', '437', null, null, 'CSN', 'active', '200', 'Central Suriname', '4.73752', '-56.187794', '2008-11-21');
INSERT INTO "public"."sites_team" VALUES ('31', 'Mudumalai Game Reserve', null, '1', null, null, 'MUD', 'disabled', '102', 'Mudumalai', '11.5989', '76.5338', null);
INSERT INTO "public"."sites_team" VALUES ('34', 'Volcanoes National Park', null, '1', null, null, 'VOL', 'setup', '185', 'Volcanoes', '-1.483333', '29.533333', null);
COMMIT;

-- ----------------------------
--  Primary key structure for table sites_team
-- ----------------------------
ALTER TABLE "public"."sites_team" ADD PRIMARY KEY ("site_id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Uniques structure for table sites_team
-- ----------------------------
ALTER TABLE "public"."sites_team" ADD CONSTRAINT "site_abbv_key" UNIQUE ("site_abbv") NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE "public"."sites_team" ADD CONSTRAINT "site_name_key" UNIQUE ("site_name") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Triggers structure for table sites_team
-- ----------------------------
CREATE CONSTRAINT TRIGGER "RI_ConstraintTrigger_a_4859998" AFTER UPDATE ON "public"."sites_team" FROM "public"."download_item_record" NOT DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE "RI_FKey_noaction_upd"();
COMMENT ON TRIGGER "RI_ConstraintTrigger_a_4859998" ON "public"."sites_team" IS NULL;
CREATE CONSTRAINT TRIGGER "RI_ConstraintTrigger_a_4859997" AFTER DELETE ON "public"."sites_team" FROM "public"."download_item_record" NOT DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE "RI_FKey_noaction_del"();
COMMENT ON TRIGGER "RI_ConstraintTrigger_a_4859997" ON "public"."sites_team" IS NULL;
CREATE CONSTRAINT TRIGGER "RI_ConstraintTrigger_a_4860053" AFTER UPDATE ON "public"."sites_team" FROM "public"."managing_institutions_sites_team" NOT DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE "RI_FKey_noaction_upd"();
COMMENT ON TRIGGER "RI_ConstraintTrigger_a_4860053" ON "public"."sites_team" IS NULL;
CREATE CONSTRAINT TRIGGER "RI_ConstraintTrigger_a_4860052" AFTER DELETE ON "public"."sites_team" FROM "public"."managing_institutions_sites_team" NOT DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE "RI_FKey_noaction_del"();
COMMENT ON TRIGGER "RI_ConstraintTrigger_a_4860052" ON "public"."sites_team" IS NULL;
CREATE CONSTRAINT TRIGGER "RI_ConstraintTrigger_a_6157310" AFTER UPDATE ON "public"."sites_team" NOT DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE "RI_FKey_noaction_upd"();
COMMENT ON TRIGGER "RI_ConstraintTrigger_a_6157310" ON "public"."sites_team" IS NULL;
CREATE CONSTRAINT TRIGGER "RI_ConstraintTrigger_a_6157309" AFTER DELETE ON "public"."sites_team" NOT DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE "RI_FKey_noaction_del"();
COMMENT ON TRIGGER "RI_ConstraintTrigger_a_6157309" ON "public"."sites_team" IS NULL;

