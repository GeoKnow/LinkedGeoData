FROM ubuntu:16.04
#FROM mdillon/postgis:9.5
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get -y update --fix-missing && apt-get install -y openjdk-8-jdk wget sudo curl osmosis

# && \
#    sudo apt-get install wget 
RUN wget -qO - http://cstadler.aksw.org/repos/apt/conf/packages.precise.gpg.key  | sudo apt-key add - && \
    echo 'deb http://cstadler.aksw.org/repos/apt precise main contrib non-free' | sudo tee -a /etc/apt/sources.list.d/cstadler.aksw.org.list && \
    apt-get update && \
    apt-get install -y linkedgeodata

WORKDIR /app/linkedgeodata

#COPY init-lgd.sh .

#RUN chmod +x init-lgd.sh && sleep 1

ENTRYPOINT sparqlify -h "$DB_HOST" -p "$DB_PORT" -d "$DB_NAME" -U "$DB_USER" -W "$DB_PASS" -m "/usr/share/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml" -t 180 -n 50000


EXPOSE 7531
#-Q "SELECT * { ?s ?p ?o } LIMIT 10"

