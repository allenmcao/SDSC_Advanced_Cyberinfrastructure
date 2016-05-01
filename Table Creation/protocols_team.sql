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

 Date: 07/01/2014 11:37:02 AM
*/

-- ----------------------------
--  Table structure for protocols_team
-- ----------------------------
DROP TABLE IF EXISTS "public"."protocols_team";
CREATE TABLE "public"."protocols_team" (
	"protocol_id" int4 NOT NULL,
	"previous_version" float8,
	"protocol_name" varchar(100) NOT NULL COLLATE "default",
	"protocol_version" float8 NOT NULL,
	"protocol_description" varchar(1024) NOT NULL COLLATE "default",
	"binary_file" bytea,
	"protocol_status" int4 NOT NULL,
	"file_size" int4,
	"file_name" varchar(200) COLLATE "default",
	"content_type" varchar(50) COLLATE "default",
	"last_event_at" timestamp(6) NULL,
	"last_event_by" int4 NOT NULL,
	"effective_date" date,
	"id" int4 NOT NULL,
	"protocol_abbv" varchar(10) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."protocols_team" OWNER TO "teamuser";

-- ----------------------------
--  Records of protocols_team
-- ----------------------------
BEGIN;
INSERT INTO "public"."protocols_team" VALUES ('1', '2.1', 'Ant', '2.1', 'Ants Description', null, '0', null, null, null, '2006-08-07 00:00:00', '437', null, '1', 'AT');
INSERT INTO "public"."protocols_team" VALUES ('5', '2', 'Climate', '2', 'Climate Description', null, '1', null, null, null, '2006-08-07 00:00:00', '437', null, '5', 'CL');
INSERT INTO "public"."protocols_team" VALUES ('2', '3', 'Avian', '3.1', 'Avian Description', null, '1', null, null, null, '2006-08-07 00:00:00', '437', null, '2', 'AV');
INSERT INTO "public"."protocols_team" VALUES ('2', '3', 'Avian', '3', 'Avian Description', null, '0', null, null, null, '2006-08-07 00:00:00', '437', null, '9', 'AV');
INSERT INTO "public"."protocols_team" VALUES ('8', '1.3', 'Vegetation - Trees & Lianas', '1.4', 'Vegetation Description', null, '1', null, null, null, '2006-08-07 00:00:00', '437', null, '8', 'VG');
INSERT INTO "public"."protocols_team" VALUES ('8', '1.3', 'Vegetation - Trees & Lianas', '1.3', 'Vegetation Description', null, '0', null, null, null, '2009-03-31 16:46:26', '437', null, '10', 'VG');
INSERT INTO "public"."protocols_team" VALUES ('7', '1', 'Primate', '1', 'Primate Description', null, '1', null, null, null, '2006-08-07 00:00:00', '437', null, '7', 'PR');
INSERT INTO "public"."protocols_team" VALUES ('6', '1.4', 'Vegetation - Litterfall', '1.4', 'Litterfal Description', null, '1', null, null, null, '2006-08-07 00:00:00', '437', null, '6', 'VL');
INSERT INTO "public"."protocols_team" VALUES ('3', '2.1', 'Butterfly', '2.1', 'Butterfly Description', null, '1', null, null, null, '2006-08-07 00:00:00', '437', null, '3', 'BT');
INSERT INTO "public"."protocols_team" VALUES ('4', '1', 'Terrestrial Vertebrate', '1', 'Camera Trap Description', null, '1', null, null, null, '2006-08-07 00:00:00', '437', null, '4', 'TV');
INSERT INTO "public"."protocols_team" VALUES ('8', '1.4', 'Vegetation - Trees & Lianas', '1.5', 'Vegetation Description', null, '1', null, null, null, '2006-08-07 00:00:00', '437', null, '11', 'VG');
INSERT INTO "public"."protocols_team" VALUES ('5', '2', 'Climate', '3', 'Climate Description', null, '1', null, null, null, '2010-05-07 00:00:00', '437', null, '12', 'CL');
COMMIT;

-- ----------------------------
--  Primary key structure for table protocols_team
-- ----------------------------
ALTER TABLE "public"."protocols_team" ADD PRIMARY KEY ("protocol_id", "protocol_version") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Uniques structure for table protocols_team
-- ----------------------------
ALTER TABLE "public"."protocols_team" ADD CONSTRAINT "unique_protocol_id" UNIQUE ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Triggers structure for table protocols_team
-- ----------------------------
CREATE CONSTRAINT TRIGGER "RI_ConstraintTrigger_a_4860593" AFTER UPDATE ON "public"."protocols_team" FROM "public"."tv_camera_trap_data" NOT DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE "RI_FKey_noaction_upd"();
COMMENT ON TRIGGER "RI_ConstraintTrigger_a_4860593" ON "public"."protocols_team" IS NULL;
CREATE CONSTRAINT TRIGGER "RI_ConstraintTrigger_a_4860592" AFTER DELETE ON "public"."protocols_team" FROM "public"."tv_camera_trap_data" NOT DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE "RI_FKey_noaction_del"();
COMMENT ON TRIGGER "RI_ConstraintTrigger_a_4860592" ON "public"."protocols_team" IS NULL;

