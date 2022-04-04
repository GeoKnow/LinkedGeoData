psql -d "$1" -c "TRUNCATE lgd_map_resource_k"
psql -d "$1" -c "TRUNCATE lgd_map_resource_kv"
psql -d "$1" -c "TRUNCATE lgd_map_literal"
psql -d "$1" -c "TRUNCATE lgd_map_label"
psql -d "$1" -c "TRUNCATE lgd_map_property"
psql -d "$1" -c "TRUNCATE lgd_map_datatype"

