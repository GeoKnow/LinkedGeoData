databaseName="$1"

pg_dump -x "$databaseName" -at lgd_map_resource_k -at lgd_map_resource_kv -at lgd_map_resource_prefix -at lgd_map_literal -at lgd_map_label -at lgd_map_datatype_k
