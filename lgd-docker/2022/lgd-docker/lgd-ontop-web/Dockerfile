FROM ontop/ontop-endpoint:latest
WORKDIR /opt/ontop

#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.18/postgresql-42.2.18.jar jdbc/
#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.18.jre7/postgresql-42.2.18.jre7.jar jdbc/
#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.18.jre6/postgresql-42.2.18.jre6.jar jdbc/

#ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/9.3-1103-jdbc3/postgresql-9.3-1103-jdbc3.jar jdbc/
ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.19/postgresql-42.2.19.jar jdbc/

ADD lgd.obda input/lgd.obda
ADD lgd.owl input/lgd.owl
ADD lgd.portal.toml input/lgd.portal.toml
ADD catalog-v001.xml input/catalog-v001.xml
ADD library input/library

RUN sleep 3

### Custom script to expand Ontop-Metamappings
### Assumes ONTOP_OBDA_FILE= "lgd.obda"
### Uncomment below to run
# ADD expand-metamappings.sh input/expand-metamappings.sh
# ADD metamappings input/metamappings
# RUN chmod +x input/expand-metamappings.sh
# RUN cd input && ./expand-metamappings.sh

RUN env

EXPOSE 8080

