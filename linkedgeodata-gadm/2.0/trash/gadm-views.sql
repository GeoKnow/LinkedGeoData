-- Script to normalize the GADM2 data


CREATE INDEX "idx_lgd_gadm_the_geom" ON "lgd_gadm" USING GIST("the_geom");

CREATE INDEX "idx_lgd_gadm_id_0" ON "lgd_gadm"("id_0");
CREATE INDEX "idx_lgd_gadm_id_1" ON "lgd_gadm"("id_1");
CREATE INDEX "idx_lgd_gadm_id_2" ON "lgd_gadm"("id_2");
CREATE INDEX "idx_lgd_gadm_id_3" ON "lgd_gadm"("id_3");
CREATE INDEX "idx_lgd_gadm_id_4" ON "lgd_gadm"("id_4");
CREATE INDEX "idx_lgd_gadm_id_5" ON "lgd_gadm"("id_5");

CREATE INDEX "idx_lgd_gadm_name_0" ON "lgd_gadm"("name_0");
CREATE INDEX "idx_lgd_gadm_name_1" ON "lgd_gadm"("name_1");
CREATE INDEX "idx_lgd_gadm_name_2" ON "lgd_gadm"("name_2");
CREATE INDEX "idx_lgd_gadm_name_3" ON "lgd_gadm"("name_3");
CREATE INDEX "idx_lgd_gadm_name_4" ON "lgd_gadm"("name_4");
CREATE INDEX "idx_lgd_gadm_name_5" ON "lgd_gadm"("name_5");

CREATE INDEX "idx_lgd_gadm_iso" ON "lgd_gadm"("iso");

CREATE INDEX "idx_lgd_gadm_type_1" ON "lgd_gadm"("type_1");
CREATE INDEX "idx_lgd_gadm_type_2" ON "lgd_gadm"("type_2");
CREATE INDEX "idx_lgd_gadm_type_3" ON "lgd_gadm"("type_3");
CREATE INDEX "idx_lgd_gadm_type_4" ON "lgd_gadm"("type_4");
CREATE INDEX "idx_lgd_gadm_type_5" ON "lgd_gadm"("type_5");


CREATE INDEX "idx_lgd_gadm_engtype_1" ON "lgd_gadm"("engtype_1");
CREATE INDEX "idx_lgd_gadm_engtype_2" ON "lgd_gadm"("engtype_2");
CREATE INDEX "idx_lgd_gadm_engtype_3" ON "lgd_gadm"("engtype_3");
CREATE INDEX "idx_lgd_gadm_engtype_4" ON "lgd_gadm"("engtype_4");
CREATE INDEX "idx_lgd_gadm_engtype_5" ON "lgd_gadm"("engtype_5");

CREATE INDEX "idx_lgd_gadm_validfr_1" ON "lgd_gadm"("validfr_1");
CREATE INDEX "idx_lgd_gadm_validfr_2" ON "lgd_gadm"("validfr_2");
CREATE INDEX "idx_lgd_gadm_validfr_3" ON "lgd_gadm"("validfr_3");
CREATE INDEX "idx_lgd_gadm_validfr_4" ON "lgd_gadm"("validfr_4");
--CREATE INDEX "idx_lgd_gadm_validfr_5" ON "lgd_gadm"("validfr_5");

CREATE INDEX "idx_lgd_gadm_validto_1" ON "lgd_gadm"("validto_1");
CREATE INDEX "idx_lgd_gadm_validto_2" ON "lgd_gadm"("validto_2");
CREATE INDEX "idx_lgd_gadm_validto_3" ON "lgd_gadm"("validto_3");
CREATE INDEX "idx_lgd_gadm_validto_4" ON "lgd_gadm"("validto_4");
--CREATE INDEX "idx_lgd_gadm_validto_5" ON "lgd_gadm"("validto_5");

CREATE INDEX "idx_lgd_gadm_remarks_1" ON "lgd_gadm"("remarks_1");
CREATE INDEX "idx_lgd_gadm_remarks_2" ON "lgd_gadm"("remarks_2");
CREATE INDEX "idx_lgd_gadm_remarks_3" ON "lgd_gadm"("remarks_3");
CREATE INDEX "idx_lgd_gadm_remarks_4" ON "lgd_gadm"("remarks_4");
--CREATE INDEX "idx_lgd_gadm_remarks_5" ON "lgd_gadm"("remarks_5");

CREATE INDEX "idx_lgd_gadm_hasc_1" ON "lgd_gadm"("hasc_1");
CREATE INDEX "idx_lgd_gadm_hasc_2" ON "lgd_gadm"("hasc_2");
CREATE INDEX "idx_lgd_gadm_hasc_3" ON "lgd_gadm"("hasc_3");
--CREATE INDEX "idx_lgd_gadm_hasc_4" ON "lgd_gadm"("hasc_4");
--CREATE INDEX "idx_lgd_gadm_hasc_5" ON "lgd_gadm"("hasc_5");

CREATE INDEX "idx_lgd_gadm_cc_1" ON "lgd_gadm"("cc_1");
CREATE INDEX "idx_lgd_gadm_cc_2" ON "lgd_gadm"("cc_2");
--CREATE INDEX "idx_lgd_gadm_cc_3" ON "lgd_gadm"("cc_3");
--CREATE INDEX "idx_lgd_gadm_cc_4" ON "lgd_gadm"("cc_4");
--CREATE INDEX "idx_lgd_gadm_cc_5" ON "lgd_gadm"("cc_5");

DROP VIEW IF EXISTS "lgd_gadm_lvl_0";

DROP VIEW IF EXISTS "lgd_gadm_lvl_1";
DROP VIEW IF EXISTS "lgd_gadm_lvl_1_altlabels";

DROP VIEW IF EXISTS "lgd_gadm_lvl_2";
DROP VIEW IF EXISTS "lgd_gadm_lvl_2_altlabels";

DROP VIEW IF EXISTS "lgd_gadm_lvl_3";
DROP VIEW IF EXISTS "lgd_gadm_lvl_3_altlabels";

DROP VIEW IF EXISTS "lgd_gadm_lvl_4";
DROP VIEW IF EXISTS "lgd_gadm_lvl_4_altlabels";

DROP VIEW IF EXISTS "lgd_gadm_lvl_5";


-- Level 0

CREATE VIEW "lgd_gadm_lvl_0" AS
    SELECT DISTINCT "id_0", "name_0", "iso"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0;

-- Level 1

CREATE VIEW "lgd_gadm_lvl_1" AS
    SELECT DISTINCT "id_0", "id_1", "name_1", "type_1", "engtype_1", "validfr_1", "validto_1", "remarks_1", "hasc_1", "cc_1"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0;

CREATE VIEW "lgd_gadm_lvl_1_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", unnest(string_to_array("varname_1", '|'))
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0;

-- Level 2

CREATE VIEW "lgd_gadm_lvl_2" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "name_2", "type_2", "engtype_2", "validfr_2", "validto_2", "remarks_2", "hasc_2", "cc_2"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0;

CREATE VIEW "lgd_gadm_lvl_2_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", unnest(string_to_array("varname_2", '|'))
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0;

-- Level 3

CREATE VIEW "lgd_gadm_lvl_3" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "name_3", "type_3", "engtype_3", "validfr_3", "validto_3", "remarks_3", "hasc_3"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0;

CREATE VIEW "lgd_gadm_lvl_3_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", unnest(string_to_array("varname_3", '|'))
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0;


-- Level 4

CREATE VIEW "lgd_gadm_lvl_4" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "id_4", "name_4", "type_4", "engtype_4", "validfr_4", "validto_4", "remarks_4"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" <> 0;

CREATE VIEW "lgd_gadm_lvl_4_altlabels" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "id_4", unnest(string_to_array("varname_4", '|'))
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" <> 0;

-- Level 5

CREATE VIEW "lgd_gadm_lvl_5" AS
    SELECT DISTINCT "id_0", "id_1", "id_2", "id_3", "id_4", "id_5", "name_5", "type_5", "engtype_5"
    FROM "lgd_gadm"
    WHERE "id_0" <> 0 AND "id_1" <> 0 AND "id_2" <> 0 AND "id_3" <> 0 AND "id_4" <> 0 AND "id_5" <> 0;


