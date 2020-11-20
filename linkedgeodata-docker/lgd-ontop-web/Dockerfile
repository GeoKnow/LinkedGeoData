FROM ontop/ontop-endpoint
WORKDIR /opt/ontop

#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.18/postgresql-42.2.18.jar jdbc/
#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.18.jre7/postgresql-42.2.18.jre7.jar jdbc/
#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.18.jre6/postgresql-42.2.18.jre6.jar jdbc/

#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/9.3-1103-jdbc3/postgresql-9.3-1103-jdbc3.jar jdbc/
ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/9.3-1101-jdbc41/postgresql-9.3-1101-jdbc41.jar jdbc/

ADD https://raw.githubusercontent.com/alpano-unibz/LinkedGeoData/ontop-dev/linkedgeodata-ontop/gdm_vkg.obda input/
ADD https://raw.githubusercontent.com/alpano-unibz/LinkedGeoData/ontop-dev/linkedgeodata-ontop/gdm_vkg.owl input/

ADD create-properties.sh .
RUN chmod +x create-properties.sh
RUN sleep 3
RUN ./create-properties.sh > input/gdm_vkg.properties

EXPOSE 8080

