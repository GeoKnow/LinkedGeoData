
-- Example for dropping all tables: https://stackoverflow.com/questions/3327312/how-can-i-drop-all-the-tables-in-a-postgresql-database
-- Post-fix use of \gexec: https://blog.dbi-services.com/a-look-at-postgresql-9-6-psql-gexec-2/

SELECT FORMAT('DROP TABLE %I.%I.%I CASCADE;', table_catalog, table_schema, table_name)
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
  AND table_schema <> 'information_schema'
  AND table_schema NOT LIKE 'pg_%' AND (
  table_name LIKE 'location_%' OR table_name LIKE 'search_%' OR table_name LIKE 'import_%' OR table_name LIKE 'place%' OR table_name LIKE 'planet_osm_%'
  OR table_name LIKE 'country%_' OR table_name LIKE 'wikipedia_%'
  OR table_name IN ('address_levels', 'word', 'new_query_log', 'nominatim_properties'))
\gexec


DROP SEQUENCE IF EXISTS file;  
DROP SEQUENCE IF EXISTS seq_place;
DROP SEQUENCE IF EXISTS seq_word;

