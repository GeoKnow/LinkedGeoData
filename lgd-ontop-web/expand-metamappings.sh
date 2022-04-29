
# Tabs inserted manually to avoid any risk with \t on different systems
# x27 used for single quote, otherwise double quotes would have been needed
# * and ^ need to be escaped
perl -0777 -i -pe 's[mappingId\tlgd_node_tags_resource_k\ntarget\t\tlgd:node\{node_id\} a <\{object\}> .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_node_tags_resource_k][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_node_tags_resource_kv\ntarget\t\tlgd:node\{node_id\} a <\{object\}> .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_node_tags_resource_kv WHERE property=\x27http://www.w3.org/1999/02/22-rdf-syntax-ns#type\x27][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_node_tags_int\ntarget\t\tlgd:node\{node_id\} <\{property\}> \{v\}\^\^xsd:int .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_node_tags_int][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_node_tags_float\ntarget\t\tlgd:node\{node_id\} <\{property\}> \{v\}\^\^xsd:float .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_node_tags_float][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_node_tags_boolean\ntarget\t\tlgd:node\{node_id\} <\{property\}> \{v\}\^\^xsd:boolean .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_node_tags_boolean][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_node_tags_text\ntarget\t\tlgd:node\{node_id\} <\{property\}> \{v\}\^\^xsd:string .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_node_tags_text\n\t\t\tWHERE property != \x27http://www.w3.org/2000/01/rdf-schema#label\x27][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_way_tags_resource_k\ntarget\t\tlgd:node\{way_id\} a <\{object\}> .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_way_tags_resource_k][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_way_tags_resource_kv\ntarget\t\tlgd:node\{way_id\} a <\{object\}> .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_way_tags_resource_kv WHERE property=\x27http://www.w3.org/1999/02/22-rdf-syntax-ns#type\x27][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_way_tags_int\ntarget\t\tlgd:way\{way_id\} <\{property\}> \{v\}\^\^xsd:int .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_way_tags_int][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_way_tags_float\ntarget\t\tlgd:way\{way_id\} <\{property\}> \{v\}\^\^xsd:float .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_way_tags_float][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_way_tags_boolean\ntarget\t\tlgd:way\{way_id\} <\{property\}> \{v\}\^\^xsd:boolean .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_way_tags_boolean][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_way_tags_text\ntarget\t\tlgd:way\{way_id\} <\{property\}> \{v\}\^\^xsd:string .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_way_tags_text\n\t\t\tWHERE property != \x27http://www.w3.org/2000/01/rdf-schema#label\x27][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_relation_tags_resource_k\ntarget\t\tlgd:relation\{relation_id\} a <\{object\}> .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_relation_tags_resource_k][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_relation_tags_resource_kv\ntarget\t\tlgd:relation\{relation_id\} a <\{object\}> .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_relation_tags_resource_kv WHERE property=\x27http://www.w3.org/1999/02/22-rdf-syntax-ns#type\x27][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_relation_tags_int\ntarget\t\tlgd:relation\{relation_id\} <\{property\}> \{v\}\^\^xsd:int .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_relation_tags_int][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_relation_tags_float\ntarget\t\tlgd:relation\{relation_id\} <\{property\}> \{v\}\^\^xsd:float .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_relation_tags_float][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_relation_tags_boolean\ntarget\t\tlgd:relation\{relation_id\} <\{property\}> \{v\}\^\^xsd:boolean .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_relation_tags_boolean][]igs' lgd.obda
perl -0777 -i -pe 's[mappingId\tlgd_relation_tags_text\ntarget\t\tlgd:relation\{relation_id\} <\{property\}> \{v\}\^\^xsd:string .\nsource\t\tSELECT \*\n\t\t\tFROM lgd_relation_tags_text\n\t\t\tWHERE property != \x27http://www.w3.org/2000/01/rdf-schema#label\x27][]igs' lgd.obda




# Remove last line of mapping file i.e. ']]'
# gawk -i inplace '{ gsub(/]]/, "") }; { print }' lgd.obda
perl -0777 -i -pe 's/]]//igs' lgd.obda


# Add all the additional metamappings
k_mapping_node=$(cat <<-END

mappingId       lgd_node_tags_resource_k_{object}
target          lgd:node{node_id} a <{object}> .
source          SELECT *
                         FROM lgd_node_tags_resource_k WHERE object = '{object}'
END
)
echo "$(awk -v mapping="$k_mapping_node\n" 'BEGIN{gsub("{object}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_resource_k.txt)" >> lgd.obda


kv_mapping_node=$(cat <<-END

mappingId       lgd_node_tags_resource_kv_{object}
target          lgd:node{node_id} a <{object}> .
source          SELECT *
                        FROM lgd_node_tags_resource_kv WHERE property='http://www.w3.org/1999/02/22-rdf-syntax-ns#type'
                        AND object = '{object}'
END
)
echo "$(awk -v mapping="$kv_mapping_node\n" 'BEGIN{gsub("{object}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_resource_kv.txt)" >> lgd.obda


int_mapping_node=$(cat <<-END

mappingId       lgd_node_tags_int_{property}
target          lgd:node{node_id} <{property}> {v}^^xsd:int .
source          SELECT *
                        FROM lgd_node_tags_int WHERE property = '{property}'

END
)
echo "$(awk -v mapping="$int_mapping_node\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_int.txt)" >> lgd.obda


boolean_mapping_node=$(cat <<-END

mappingId	      lgd_node_tags_boolean_{property}
target          lgd:node{node_id} <{property}> {v}^^xsd:boolean .
source          SELECT *
                        FROM lgd_node_tags_boolean WHERE property = '{property}'

END
)
echo "$(awk -v mapping="$boolean_mapping_node\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_boolean.txt)" >> lgd.obda


float_mapping_node=$(cat <<-END

mappingId	      lgd_node_tags_float_{property}
target          lgd:node{node_id} <{property}> {v}^^xsd:float .
source          SELECT *
                        FROM lgd_node_tags_float WHERE property = '{property}'

END
)
echo "$(awk -v mapping="$float_mapping_node\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_float.txt)" >> lgd.obda


text_mapping_node=$(cat <<-END

mappingId	      lgd_node_tags_text_{property}
target          lgd:node{node_id} <{property}> {v}^^xsd:string .
source          SELECT *
                        FROM lgd_node_tags_text
                        WHERE property != 'http://www.w3.org/2000/01/rdf-schema#label'
                        AND property = '{property}'

END
)
echo "$(awk -v mapping="$text_mapping_node\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_text.txt)" >> lgd.obda


k_mapping_way=$(cat <<-END

mappingId       lgd_way_tags_resource_k_{object}
target          lgd:way{way_id} a <{object}> .
source          SELECT *
                        FROM lgd_way_tags_resource_k WHERE object = '{object}'

END
)
echo "$(awk -v mapping="$k_mapping_way\n" 'BEGIN{gsub("{object}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_resource_k.txt)" >> lgd.obda


kv_mapping_way=$(cat <<-END

mappingId	      lgd_way_tags_resource_kv_{object}
target          lgd:way{way_id} a <{object}> .
source          SELECT *
                        FROM lgd_way_tags_resource_kv WHERE property='http://www.w3.org/1999/02/22-rdf-syntax-ns#type'
                        AND object = '{object}'

END
)
echo "$(awk -v mapping="$kv_mapping_way\n" 'BEGIN{gsub("{object}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_resource_kv.txt)" >> lgd.obda


int_mapping_way=$(cat <<-END

mappingId	      lgd_way_tags_int_{property}
target          lgd:way{way_id} <{property}> {v}^^xsd:int .
source          SELECT *
                        FROM lgd_way_tags_int WHERE property = '{property}'

END
)
echo "$(awk -v mapping="$int_mapping_way\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_int.txt)" >> lgd.obda


boolean_mapping_way=$(cat <<-END

mappingId	      lgd_way_tags_boolean_{property}
target          lgd:way{way_id} <{property}> {v}^^xsd:boolean .
source          SELECT *
                        FROM lgd_way_tags_boolean WHERE property = '{property}'

END
)
echo "$(awk -v mapping="$boolean_mapping_way\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_boolean.txt)" >> lgd.obda


float_mapping_way=$(cat <<-END

mappingId	      lgd_way_tags_float_{property}
target          lgd:way{way_id} <{property}> {v}^^xsd:float .
source          SELECT *
                        FROM lgd_way_tags_float WHERE property = '{property}'

END
)
echo "$(awk -v mapping="$float_mapping_way\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_float.txt)" >> lgd.obda


text_mapping_way=$(cat <<-END

mappingId	      lgd_way_tags_text_{property}
target          lgd:way{way_id} <{property}> {v}^^xsd:string .
source          SELECT *
                        FROM lgd_way_tags_text
                        WHERE property != 'http://www.w3.org/2000/01/rdf-schema#label'
                        AND property = '{property}'

END
)
echo "$(awk -v mapping="$text_mapping_way\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_text.txt)" >> lgd.obda


k_mapping_relation=$(cat <<-END

mappingId       lgd_relation_tags_resource_k_{object}
target          lgd:relation{relation_id} a <{object}> .
source          SELECT *
                        FROM lgd_relation_tags_resource_k WHERE object = '{object}'

END
)
echo "$(awk -v mapping="$k_mapping_relation\n" 'BEGIN{gsub("{object}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_resource_k.txt)" >> lgd.obda


kv_mapping_relation=$(cat <<-END

mappingId	      lgd_relation_tags_resource_kv_{object}
target          lgd:relation{relation_id} a <{object}> .
source          SELECT *
                        FROM lgd_relation_tags_resource_kv WHERE property='http://www.w3.org/1999/02/22-rdf-syntax-ns#type'
                        AND object = '{object}'

END
)
echo "$(awk -v mapping="$kv_mapping_relation\n" 'BEGIN{gsub("{object}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_resource_kv.txt)" >> lgd.obda


int_mapping_relation=$(cat <<-END

mappingId	      lgd_relation_tags_int_{property}
target          lgd:relation{relation_id} <{property}> {v}^^xsd:int .
source          SELECT *
                        FROM lgd_relation_tags_int WHERE property = '{property}'

END
)
echo "$(awk -v mapping="$int_mapping_relation\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_int.txt)" >> lgd.obda


boolean_mapping_relation=$(cat <<-END

mappingId	      lgd_relation_tags_boolean_{property}
target          lgd:relation{relation_id} <{property}> {v}^^xsd:boolean .
source          SELECT *
                        FROM lgd_relation_tags_boolean WHERE property = '{property}'

END
)
echo "$(awk -v mapping="$boolean_mapping_relation\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_boolean.txt)" >> lgd.obda


float_mapping_relation=$(cat <<-END

mappingId	      lgd_relation_tags_float_{property}
target          lgd:relation{relation_id} <{property}> {v}^^xsd:float .
source          SELECT *
                        FROM lgd_relation_tags_float WHERE property = '{property}'

END
)
echo "$(awk -v mapping="$float_mapping_relation\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_float.txt)" >> lgd.obda


text_mapping_relation=$(cat <<-END

mappingId	      lgd_relation_tags_text_{property}
target          lgd:relation{relation_id} <{property}> {v}^^xsd:string .
source          SELECT *
                        FROM lgd_relation_tags_text
                        WHERE property != 'http://www.w3.org/2000/01/rdf-schema#label'
                        AND property = '{property}'

END
)
echo "$(awk -v mapping="$text_mapping_relation\n" 'BEGIN{gsub("{property}", "%s", mapping)} /^[a-z0-9]/  {iris[++i]=$0} END {for (p in iris) printf(mapping, p, iris[p], iris[p])}' metamappings/lgd_map_text.txt)" >> lgd.obda

echo "]]" >> lgd.obda