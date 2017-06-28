FROM ubuntu:16.04
#FROM mdillon/postgis:9.5
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

RUN echo "forcerebuild 6"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update --fix-missing && apt-get install -y postgresql-9.5-postgis-2.2 wget sudo curl osmosis gettext-base osmctools

# TODO We actually just need the postgres client stuff, together with some postgis sql scripts - so no full db server needed

# && \
#    sudo apt-get install wget 
RUN wget -qO - http://cstadler.aksw.org/repos/apt/conf/packages.precise.gpg.key  | sudo apt-key add - && \
    echo 'deb http://cstadler.aksw.org/repos/apt precise main contrib non-free' | sudo tee -a /etc/apt/sources.list.d/cstadler.aksw.org.list && \
    apt-get update && \
    apt-get install -y linkedgeodata

WORKDIR /app/linkedgeodata

COPY configuration.txt.dist .
COPY start.sh ./start.sh

RUN chmod +x ./start.sh && sleep 1

ENTRYPOINT ./start.sh
