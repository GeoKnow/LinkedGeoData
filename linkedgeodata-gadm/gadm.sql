-- Script to normalize the GADM2 data

DROP TABLE IF EXISTS "lgd_gadm_lvl_0";

DROP TABLE IF EXISTS "lgd_gadm_lvl_1";
DROP TABLE IF EXISTS "lgd_gadm_lvl_1_altlabels";

DROP TABLE IF EXISTS "lgd_gadm_lvl_2";
DROP TABLE IF EXISTS "lgd_gadm_lvl_2_altlabels";

DROP TABLE IF EXISTS "lgd_gadm_lvl_3";
DROP TABLE IF EXISTS "lgd_gadm_lvl_3_altlabels";

DROP TABLE IF EXISTS "lgd_gadm_lvl_4";
DROP TABLE IF EXISTS "lgd_gadm_lvl_4_altlabels";

DROP TABLE IF EXISTS "lgd_gadm_lvl_5";

-- Level 0

CREATE TABLE "lgd_gadm_lvl_0" AS
    SELECT DISTINCT "id_0", "name_0", "iso"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0;

-- Level 1

CREATE TABLE "lgd_gadm_lvl_1" AS
    SELECT DISTINCT "id_0", "id_1", "name_1", "type_1", "engtype_1", "validfr_1", "validto_1", "remarks_1", "hasc_1", "cc_1"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0;

CREATE TABLE "lgd_gadm_lvl_1_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", unnest(string_to_array("varname_1", '|'))
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0;

-- Level 2

CREATE TABLE "lgd_gadm_lvl_2" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "name_2", "type_2", "engtype_2", "validfr_2", "validto_2", "remarks_2", "hasc_2", "cc_2"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0;

CREATE TABLE "lgd_gadm_lvl_2_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", unnest(string_to_array("varname_2", '|'))
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0;

-- Level 3

CREATE TABLE "lgd_gadm_lvl_3" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "name_3", "type_3", "engtype_3", "validfr_3", "validto_3", "remarks_3", "hasc_3"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0;

CREATE TABLE "lgd_gadm_lvl_3_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", unnest(string_to_array("varname_3", '|'))
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0;


-- Level 4

CREATE TABLE "lgd_gadm_lvl_4" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "id_4", "name_4", "type_4", "engtype_4", "validfr_4", "validto_4", "remarks_4"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" <> 0;

CREATE TABLE "lgd_gadm_lvl_4_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "id_4", unnest(string_to_array("varname_4", '|'))
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" <> 0;

-- Level 5

CREATE TABLE "lgd_gadm_lvl_5" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "id_4", "id_5", "name_5", "type_5", "engtype_5"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" <> 0 AND "id_5" <> 0;


