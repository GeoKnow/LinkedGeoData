#/bin/bash

cat <<EOL
jdbc.url=${ONTOP_DB_URL}
#jdbc.driver=org.postgresql.Driver
jdbc.driver=com.postgresql.jdbc.Driver
jdbc.user=${ONTOP_DB_USER}
jdbc.name=${ONTOP_DB_NAME}
jdbc.password=${ONTOP_DB_PASSWORD}
EOL



