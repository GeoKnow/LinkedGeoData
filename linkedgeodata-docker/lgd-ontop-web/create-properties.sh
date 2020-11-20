#/bin/bash

cat <<EOL
jdbc.url=jdbc:${ONTOP_DB_URL}
jdbc.driver=org.postgresql.Driver
#jdbc.driver=com.postgresql.jdbc.driver
jdbc.user=${ONTOP_DB_USER}
jdbc.name=${ONTOP_DB_NAME}
jdbc.password=${ONTOP_DB_PASSWORD}
EOL



