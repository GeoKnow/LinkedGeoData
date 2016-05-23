# Countries

The file `ne_10m_admin_0_countries.sml` contains mappings for countries based on the [Natural Earth countries dataset](http://www.naturalearthdata.com/downloads/10m-cultural-vectors/10m-admin-0-countries/) ([direct download](http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_0_countries.zip)).

# States

The file `ne_10m_admin_0_countries.sml` contains SML mappings for states in Germany based on the [Natural Earth states and provinces dataset](http://www.naturalearthdata.com/downloads/10m-cultural-vectors/10m-admin-1-states-provinces/) ([direct download](http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_1_states_provinces.zip)).


shp2pgsql -W 'LATIN1' -g 'the_geom' -s '4326' 'gadm2.shp' 'ne_10m_admin_0_countries' | psql -h "$dbHost" -d "$dbName" -U "$dbUser"


shp2pgsql -W 'LATIN1' -g 'the_geom' -s '4326' 'gadm2.shp' 'ne_10m_admin_1_states_provinces' | psql -h "$dbHost" -d "$dbName" -U "$dbUser"



