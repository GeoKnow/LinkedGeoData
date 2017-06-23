<?php
#  @define('CONST_Osm2pgsql_Binary', 'osm2pgsql');

  @define('CONST_Postgresql_Version', 9.5);
  @define('CONST_Postgis_Version', 2.3);
 
  // Website settings
  @define('CONST_Database_DSN', 'pgsql://lgd:lgdpwd@lgd-db:5432/lgd'); // <driver>://<username>:<password>@<host>:<port>/<database>
  @define('CONST_Website_BaseURL', '/');
  @define('CONST_Replication_Url', 'http://download.geofabrik.de/monaco-updates');
  @define('CONST_Replication_MaxInterval', '86400');     // Process each update separately, osmosis cannot merge multiple updates
  @define('CONST_Replication_Update_Interval', '86400');  // How often upstream publishes diffs
  @define('CONST_Replication_Recheck_Interval', '900');   // How long to sleep if no update found yet
?>
