-- Script to normalize the GADM2 data
-- Assumes raw (original) gadm data to be stored in the table "lgd_gadm2_raw"


DROP TABLE IF EXISTS "lgd_gadm2_lvl_0_data";
DROP TABLE IF EXISTS "lgd_gadm2_lvl_0_only";

DROP TABLE IF EXISTS "lgd_gadm2_lvl_1_data";
DROP TABLE IF EXISTS "lgd_gadm2_lvl_1_only";
DROP TABLE IF EXISTS "lgd_gadm2_lvl_1_altlabels";

DROP TABLE IF EXISTS "lgd_gadm2_lvl_2_data";
DROP TABLE IF EXISTS "lgd_gadm2_lvl_2_only";
DROP TABLE IF EXISTS "lgd_gadm2_lvl_2_altlabels";

DROP TABLE IF EXISTS "lgd_gadm2_lvl_3_data";
DROP TABLE IF EXISTS "lgd_gadm2_lvl_3_only";
DROP TABLE IF EXISTS "lgd_gadm2_lvl_3_altlabels";

DROP TABLE IF EXISTS "lgd_gadm2_lvl_4_data";
DROP TABLE IF EXISTS "lgd_gadm2_lvl_4_only";
DROP TABLE IF EXISTS "lgd_gadm2_lvl_4_altlabels";

DROP TABLE IF EXISTS "lgd_gadm2_lvl_5_data";
DROP TABLE IF EXISTS "lgd_gadm2_lvl_5_only";


CREATE INDEX "idx_lgd_gadm2_raw_the_geom" ON "lgd_gadm2_raw" USING GIST("the_geom");

CREATE INDEX "idx_lgd_gadm2_raw_id_0" ON "lgd_gadm2_raw"("id_0");
CREATE INDEX "idx_lgd_gadm2_raw_id_1" ON "lgd_gadm2_raw"("id_1");
CREATE INDEX "idx_lgd_gadm2_raw_id_2" ON "lgd_gadm2_raw"("id_2");
CREATE INDEX "idx_lgd_gadm2_raw_id_3" ON "lgd_gadm2_raw"("id_3");
CREATE INDEX "idx_lgd_gadm2_raw_id_4" ON "lgd_gadm2_raw"("id_4");
CREATE INDEX "idx_lgd_gadm2_raw_id_5" ON "lgd_gadm2_raw"("id_5");


-- Level 0

CREATE TABLE "lgd_gadm2_lvl_0_only" AS
    SELECT DISTINCT "gid", "id_0"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" = 0 AND "id_2" = 0 AND "id_3" = 0 AND "id_4" = 0 AND "id_5" = 0;

CREATE UNIQUE INDEX "idx_lgd_gadm2_lvl_0_only_gid" ON "lgd_gadm2_lvl_0_only"("gid");
CREATE INDEX "idx_lgd_gadm2_lvl_0_only_id_0" ON "lgd_gadm2_lvl_0_only"("id_0");


CREATE TABLE "lgd_gadm2_lvl_0_data" AS
    SELECT DISTINCT "id_0", "name_0", "iso"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" = 0 AND "id_2" = 0 AND "id_3" = 0 AND "id_4" = 0 AND "id_5" = 0;

CREATE INDEX "idx_lgd_gadm2_lvl_0_data_id_0" ON "lgd_gadm2_lvl_0_data"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_0_data_name_0" ON "lgd_gadm2_lvl_0_data"("name_0");
CREATE INDEX "idx_lgd_gadm2_lvl_0_data_iso" ON "lgd_gadm2_lvl_0_data"("iso");



-- Level 1
-- All foo_1 fields are set

CREATE TABLE "lgd_gadm2_lvl_1_only" AS
    SELECT DISTINCT "gid", "id_0", "id_1"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" = 0 AND "id_3" = 0 AND "id_4" = 0 AND "id_5" = 0;

CREATE UNIQUE INDEX "idx_lgd_gadm2_lvl_1_only_gid" ON "lgd_gadm2_lvl_1_only"("gid");
CREATE INDEX "idx_lgd_gadm2_lvl_1_only_id_0" ON "lgd_gadm2_lvl_1_only"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_1_only_id_1" ON "lgd_gadm2_lvl_1_only"("id_1");


CREATE TABLE "lgd_gadm2_lvl_1_data" AS
    SELECT DISTINCT "id_0", "id_1", "name_1", "type_1", "engtype_1", "validfr_1", "validto_1", "remarks_1", "hasc_1", "cc_1"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" = 0 AND "id_3" = 0 AND "id_4" = 0 AND "id_5" = 0;

CREATE INDEX "idx_lgd_gadm2_lvl_1_data_id_0" ON "lgd_gadm2_lvl_1_data"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_1_data_id_1" ON "lgd_gadm2_lvl_1_data"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_1_data_name_1" ON "lgd_gadm2_lvl_1_data"("name_1");
CREATE INDEX "idx_lgd_gadm2_lvl_1_data_type_1" ON "lgd_gadm2_lvl_1_data"("type_1");
CREATE INDEX "idx_lgd_gadm2_lvl_1_data_engtype_1" ON "lgd_gadm2_lvl_1_data"("engtype_1");
CREATE INDEX "idx_lgd_gadm2_lvl_1_data_validfr_1" ON "lgd_gadm2_lvl_1_data"("validfr_1");
CREATE INDEX "idx_lgd_gadm2_lvl_1_data_validto_1" ON "lgd_gadm2_lvl_1_data"("validto_1");
CREATE INDEX "idx_lgd_gadm2_lvl_1_data_remarks_1" ON "lgd_gadm2_lvl_1_data"("remarks_1");
CREATE INDEX "idx_lgd_gadm2_lvl_1_data_hasc_1" ON "lgd_gadm2_lvl_1_data"("hasc_1");
CREATE INDEX "idx_lgd_gadm2_lvl_1_data_cc_1" ON "lgd_gadm2_lvl_1_data"("cc_1");


CREATE TABLE "lgd_gadm2_lvl_1_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", unnest(string_to_array("varname_1", '|')) "varname_1"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" = 0 AND "id_3" = 0 AND "id_4" = 0 AND "id_5" = 0;

CREATE INDEX "idx_lgd_gadm2_lvl_1_altlabels_id_0" ON "lgd_gadm2_lvl_1_altlabels"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_1_altlabels_id_1" ON "lgd_gadm2_lvl_1_altlabels"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_1_altlabels_varname_1" ON "lgd_gadm2_lvl_1_altlabels"("varname_1");


-- Level 2

CREATE TABLE "lgd_gadm2_lvl_2_only" AS
    SELECT DISTINCT "gid", "id_0", "id_1", "id_2"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" = 0 AND "id_4" = 0 AND "id_5" = 0;

CREATE UNIQUE INDEX "idx_lgd_gadm2_lvl_2_only_gid" ON "lgd_gadm2_lvl_2_only"("gid");
CREATE INDEX "idx_lgd_gadm2_lvl_2_only_id_0" ON "lgd_gadm2_lvl_2_only"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_2_only_id_1" ON "lgd_gadm2_lvl_2_only"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_2_only_id_2" ON "lgd_gadm2_lvl_2_only"("id_2");


CREATE TABLE "lgd_gadm2_lvl_2_data" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "name_2", "type_2", "engtype_2", "validfr_2", "validto_2", "remarks_2", "hasc_2", "cc_2"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" = 0 AND "id_4" = 0 AND "id_5" = 0;

CREATE INDEX "idx_lgd_gadm2_lvl_2_data_id_0" ON "lgd_gadm2_lvl_2_data"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_2_data_id_1" ON "lgd_gadm2_lvl_2_data"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_2_data_id_2" ON "lgd_gadm2_lvl_2_data"("id_2");
CREATE INDEX "idx_lgd_gadm2_lvl_2_data_name_2" ON "lgd_gadm2_lvl_2_data"("name_2");
CREATE INDEX "idx_lgd_gadm2_lvl_2_data_type_2" ON "lgd_gadm2_lvl_2_data"("type_2");
CREATE INDEX "idx_lgd_gadm2_lvl_2_data_engtype_2" ON "lgd_gadm2_lvl_2_data"("engtype_2");
CREATE INDEX "idx_lgd_gadm2_lvl_2_data_validfr_2" ON "lgd_gadm2_lvl_2_data"("validfr_2");
CREATE INDEX "idx_lgd_gadm2_lvl_2_data_validto_2" ON "lgd_gadm2_lvl_2_data"("validto_2");
CREATE INDEX "idx_lgd_gadm2_lvl_2_data_remarks_2" ON "lgd_gadm2_lvl_2_data"("remarks_2");
CREATE INDEX "idx_lgd_gadm2_lvl_2_data_hasc_2" ON "lgd_gadm2_lvl_2_data"("hasc_2");
CREATE INDEX "idx_lgd_gadm2_lvl_2_data_cc_2" ON "lgd_gadm2_lvl_2_data"("cc_2");


CREATE TABLE "lgd_gadm2_lvl_2_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", unnest(string_to_array("varname_2", '|')) "varname_2"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" = 0 AND "id_4" = 0 AND "id_5" = 0;

CREATE INDEX "idx_lgd_gadm2_lvl_2_altlabels_id_0" ON "lgd_gadm2_lvl_2_altlabels"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_2_altlabels_id_1" ON "lgd_gadm2_lvl_2_altlabels"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_2_altlabels_id_2" ON "lgd_gadm2_lvl_2_altlabels"("id_2");
CREATE INDEX "idx_lgd_gadm2_lvl_2_altlabels_varname_2" ON "lgd_gadm2_lvl_2_altlabels"("varname_2");


-- Level 3

CREATE TABLE "lgd_gadm2_lvl_3_only" AS
    SELECT DISTINCT "gid", "id_0", "id_1", "id_2", "id_3"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" = 0 AND "id_5" = 0;

CREATE UNIQUE INDEX "idx_lgd_gadm2_lvl_3_only_gid" ON "lgd_gadm2_lvl_3_only"("gid");
CREATE INDEX "idx_lgd_gadm2_lvl_3_only_id_0" ON "lgd_gadm2_lvl_3_only"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_3_only_id_1" ON "lgd_gadm2_lvl_3_only"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_3_only_id_2" ON "lgd_gadm2_lvl_3_only"("id_2");
CREATE INDEX "idx_lgd_gadm2_lvl_3_only_id_3" ON "lgd_gadm2_lvl_3_only"("id_3");


CREATE TABLE "lgd_gadm2_lvl_3_data" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "name_3", "type_3", "engtype_3", "validfr_3", "validto_3", "remarks_3", "hasc_3"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" = 0 AND "id_5" = 0;

CREATE INDEX "idx_lgd_gadm2_lvl_3_data_id_0" ON "lgd_gadm2_lvl_3_data"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_3_data_id_1" ON "lgd_gadm2_lvl_3_data"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_3_data_id_2" ON "lgd_gadm2_lvl_3_data"("id_2");
CREATE INDEX "idx_lgd_gadm2_lvl_3_data_id_3" ON "lgd_gadm2_lvl_3_data"("id_3");
CREATE INDEX "idx_lgd_gadm2_lvl_3_data_name_3" ON "lgd_gadm2_lvl_3_data"("name_3");
CREATE INDEX "idx_lgd_gadm2_lvl_3_data_type_3" ON "lgd_gadm2_lvl_3_data"("type_3");
CREATE INDEX "idx_lgd_gadm2_lvl_3_data_engtype_3" ON "lgd_gadm2_lvl_3_data"("engtype_3");
CREATE INDEX "idx_lgd_gadm2_lvl_3_data_validfr_3" ON "lgd_gadm2_lvl_3_data"("validfr_3");
CREATE INDEX "idx_lgd_gadm2_lvl_3_data_validto_3" ON "lgd_gadm2_lvl_3_data"("validto_3");
CREATE INDEX "idx_lgd_gadm2_lvl_3_data_remarks_3" ON "lgd_gadm2_lvl_3_data"("remarks_3");
CREATE INDEX "idx_lgd_gadm2_lvl_3_data_hasc_3" ON "lgd_gadm2_lvl_3_data"("hasc_3");


CREATE TABLE "lgd_gadm2_lvl_3_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", unnest(string_to_array("varname_3", '|')) "varname_3"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" = 0 AND "id_5" = 0;

CREATE INDEX "idx_lgd_gadm2_lvl_3_altlabels_id_0" ON "lgd_gadm2_lvl_3_altlabels"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_3_altlabels_id_1" ON "lgd_gadm2_lvl_3_altlabels"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_3_altlabels_id_2" ON "lgd_gadm2_lvl_3_altlabels"("id_2");
CREATE INDEX "idx_lgd_gadm2_lvl_3_altlabels_id_3" ON "lgd_gadm2_lvl_3_altlabels"("id_3");
CREATE INDEX "idx_lgd_gadm2_lvl_3_altlabels_varname_3" ON "lgd_gadm2_lvl_3_altlabels"("varname_3");


-- Level 4

CREATE TABLE "lgd_gadm2_lvl_4_only" AS
    SELECT DISTINCT "gid", "id_0", "id_1", "id_2", "id_3", "id_4"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" <> 0 AND "id_5" = 0;

CREATE UNIQUE INDEX "idx_lgd_gadm2_lvl_4_only_gid" ON "lgd_gadm2_lvl_4_only"("gid");
CREATE INDEX "idx_lgd_gadm2_lvl_4_only_id_0" ON "lgd_gadm2_lvl_4_only"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_4_only_id_1" ON "lgd_gadm2_lvl_4_only"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_4_only_id_2" ON "lgd_gadm2_lvl_4_only"("id_2");
CREATE INDEX "idx_lgd_gadm2_lvl_4_only_id_3" ON "lgd_gadm2_lvl_4_only"("id_3");
CREATE INDEX "idx_lgd_gadm2_lvl_4_only_id_4" ON "lgd_gadm2_lvl_4_only"("id_4");



CREATE TABLE "lgd_gadm2_lvl_4_data" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "id_4", "name_4", "type_4", "engtype_4", "validfr_4", "validto_4", "remarks_4"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" <> 0 AND "id_5" = 0;

CREATE INDEX "idx_lgd_gadm2_lvl_4_data_id_0" ON "lgd_gadm2_lvl_4_data"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_4_data_id_1" ON "lgd_gadm2_lvl_4_data"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_4_data_id_2" ON "lgd_gadm2_lvl_4_data"("id_2");
CREATE INDEX "idx_lgd_gadm2_lvl_4_data_id_3" ON "lgd_gadm2_lvl_4_data"("id_3");
CREATE INDEX "idx_lgd_gadm2_lvl_4_data_id_4" ON "lgd_gadm2_lvl_4_data"("id_4");
CREATE INDEX "idx_lgd_gadm2_lvl_4_data_name_4" ON "lgd_gadm2_lvl_4_data"("name_4");
CREATE INDEX "idx_lgd_gadm2_lvl_4_data_type_4" ON "lgd_gadm2_lvl_4_data"("type_4");
CREATE INDEX "idx_lgd_gadm2_lvl_4_data_engtype_4" ON "lgd_gadm2_lvl_4_data"("engtype_4");
CREATE INDEX "idx_lgd_gadm2_lvl_4_data_validfr_4" ON "lgd_gadm2_lvl_4_data"("validfr_4");
CREATE INDEX "idx_lgd_gadm2_lvl_4_data_validto_4" ON "lgd_gadm2_lvl_4_data"("validto_4");
CREATE INDEX "idx_lgd_gadm2_lvl_4_data_remarks_4" ON "lgd_gadm2_lvl_4_data"("remarks_4");


CREATE TABLE "lgd_gadm2_lvl_4_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "id_4", unnest(string_to_array("varname_4", '|')) "varname_4"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" <> 0 AND "id_5" = 0;

CREATE INDEX "idx_lgd_gadm2_lvl_4_altlabels_id_0" ON "lgd_gadm2_lvl_4_altlabels"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_4_altlabels_id_1" ON "lgd_gadm2_lvl_4_altlabels"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_4_altlabels_id_2" ON "lgd_gadm2_lvl_4_altlabels"("id_2");
CREATE INDEX "idx_lgd_gadm2_lvl_4_altlabels_id_3" ON "lgd_gadm2_lvl_4_altlabels"("id_3");
CREATE INDEX "idx_lgd_gadm2_lvl_4_altlabels_id_4" ON "lgd_gadm2_lvl_4_altlabels"("id_4");
CREATE INDEX "idx_lgd_gadm2_lvl_4_altlabels_varname_4" ON "lgd_gadm2_lvl_4_altlabels"("varname_4");


-- Level 5

CREATE TABLE "lgd_gadm2_lvl_5_only" AS
    SELECT DISTINCT "gid", "id_0", "id_1", "id_2", "id_3", "id_4", "id_5"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" <> 0 AND "id_5" <> 0;

CREATE UNIQUE INDEX "idx_lgd_gadm2_lvl_5_only_gid" ON "lgd_gadm2_lvl_5_only"("gid");
CREATE INDEX "idx_lgd_gadm2_lvl_5_only_id_0" ON "lgd_gadm2_lvl_5_only"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_5_only_id_1" ON "lgd_gadm2_lvl_5_only"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_5_only_id_2" ON "lgd_gadm2_lvl_5_only"("id_2");
CREATE INDEX "idx_lgd_gadm2_lvl_5_only_id_3" ON "lgd_gadm2_lvl_5_only"("id_3");
CREATE INDEX "idx_lgd_gadm2_lvl_5_only_id_4" ON "lgd_gadm2_lvl_5_only"("id_4");
CREATE INDEX "idx_lgd_gadm2_lvl_5_only_id_5" ON "lgd_gadm2_lvl_5_only"("id_5");


CREATE TABLE "lgd_gadm2_lvl_5_data" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "id_4", "id_5", "name_5", "type_5", "engtype_5"
    FROM "lgd_gadm2_raw"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" <> 0 AND "id_5" <> 0;

CREATE INDEX "idx_lgd_gadm2_lvl_5_data_id_0" ON "lgd_gadm2_lvl_5_data"("id_0");
CREATE INDEX "idx_lgd_gadm2_lvl_5_data_id_1" ON "lgd_gadm2_lvl_5_data"("id_1");
CREATE INDEX "idx_lgd_gadm2_lvl_5_data_id_2" ON "lgd_gadm2_lvl_5_data"("id_2");
CREATE INDEX "idx_lgd_gadm2_lvl_5_data_id_3" ON "lgd_gadm2_lvl_5_data"("id_3");
CREATE INDEX "idx_lgd_gadm2_lvl_5_data_id_4" ON "lgd_gadm2_lvl_5_data"("id_4");
CREATE INDEX "idx_lgd_gadm2_lvl_5_data_id_5" ON "lgd_gadm2_lvl_5_data"("id_5");
CREATE INDEX "idx_lgd_gadm2_lvl_5_data_name_5" ON "lgd_gadm2_lvl_5_data"("name_5");
CREATE INDEX "idx_lgd_gadm2_lvl_5_data_type_5" ON "lgd_gadm2_lvl_5_data"("type_5");
CREATE INDEX "idx_lgd_gadm2_lvl_5_data_engtype_5" ON "lgd_gadm2_lvl_5_data"("engtype_5");



