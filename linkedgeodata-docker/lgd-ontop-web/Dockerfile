FROM ontop/ontop-endpoint:latest
WORKDIR /opt/ontop

#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.18/postgresql-42.2.18.jar jdbc/
#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.18.jre7/postgresql-42.2.18.jre7.jar jdbc/
#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.18.jre6/postgresql-42.2.18.jre6.jar jdbc/

#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/9.3-1103-jdbc3/postgresql-9.3-1103-jdbc3.jar jdbc/
ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/9.3-1101-jdbc41/postgresql-9.3-1101-jdbc41.jar jdbc/

#ADD https://raw.githubusercontent.com/alpano-unibz/LinkedGeoData/ontop-dev/linkedgeodata-ontop/lgd.obda input/
ADD lgd.obda input/lgd.obda
ADD lgd.owl input/lgd.owl
ADD lgd.portal.toml input/lgd.portal.toml
ADD catalog-v001.xml input/catalog-v001.xml
ADD library input/library

ADD create-properties.sh .
RUN chmod +x create-properties.sh
RUN sleep 3
# Substitute ':' with '\:' - affects e.g. url schemas


#RUN ONTOP_DB_NAME="lgd" ONTOP_DB_USER="lgd" ONTOP_DB_PASSWORD="lgdpwd" ONTOP_DB_URL="postgresql://lgd:lgdpwd@lgd-db:5432/lgd" ./create-properties.sh | sed 's|:|\\:|g' > input/gdm_vkg.properties
#RUN ONTOP_DEBUG=true ONTOP_DEV_MODE=true ONTOP_DB_NAME="lgd" ONTOP_DB_USER="lgd" ONTOP_DB_PASSWORD="lgdpwd" ONTOP_DB_URL="postgresql://lgd-db:5432/lgd" ./create-properties.sh | sed 's|:|\\:|g' > input/gdm_vkg.properties
#RUN ONTOP_DB_NAME="lgd" ONTOP_DB_USER="lgd" ONTOP_DB_PASSWORD="lgdpwd" ONTOP_DB_URL="postgresql://lgd:lgdpwd@lgd-db:5432/lgd" ./create-properties.sh | sed 's|:|\\:|g' > input/lgd.properties

RUN ONTOP_DB_NAME="lgd" ONTOP_DB_USER="lgd" ONTOP_DB_PASSWORD="lgdpwd" ONTOP_DB_URL="postgresql://lgd-db:5432/lgd" ./create-properties.sh | sed 's|:|\\:|g' > input/lgd.properties

RUN env
RUN cat input/lgd.properties

EXPOSE 8080

