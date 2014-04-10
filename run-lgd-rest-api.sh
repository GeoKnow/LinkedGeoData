#!/bin/bash
java -Djdbc.driver=org.postgresql.Driver -Djdbc.password=postgres -Djdbc.username=postgres -Djdbc.url=jdbc:postgresql://localhost/facete2tomcatcommon -cp ./linkedgeodata-core/target/linkedgeodata-core-0.4.2-SNAPSHOT-jar-with-dependencies.jar org.linkedgeodata.web.main.MainLinkedGeoDataRestServer -s http://linkedgeodata.org/vsparql -P 9998

