FROM ontop/ontop-endpoint
WORKDIR /opt/ontop

ADD https://raw.githubusercontent.com/alpano-unibz/LinkedGeoData/ontop-dev/linkedgeodata-ontop/gdm_vkg.obda input/
ADD https://raw.githubusercontent.com/alpano-unibz/LinkedGeoData/ontop-dev/linkedgeodata-ontop/gdm_vkg.owl input/

EXPOSE 8080
ENTRYPOINT java -cp ./lib/*:./jdbc/* -Dlogback.configurationFile=file:./log/logback.xml \
        it.unibz.inf.ontop.cli.Ontop endpoint \
        --ontology=input/gdm_vkg.owl \
        --mapping=input/gdm_vkg.obda \
        --cors-allowed-origins=http://yasgui.org

