FROM ubuntu:16.04
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

ENV DEBIAN_FRONTEND noninteractive

RUN echo "force rebuild 7"

RUN \
    apt -y update --fix-missing && \
#    apt-get upgrade -y && \
    apt install -y software-properties-common wget git curl sudo
#    apt-get update


ENV POSTGRES_CLIENT_VERSION 9.5
ENV POSTGIS_CLIENT_VERSION 2.2

#ENV POSTGRES_CLIENT_VERSION ${POSTGRES_VERSION}
#ENV POSTGIS_CLIENT_VERSION ${POSTGIS_VERSION}

RUN echo "pgclientver: ${POSTGRES_CLIENT_VERSION}"

# for 16.04: libgeos-c1v5
RUN apt-get install -y build-essential libxml2-dev libpq-dev libbz2-dev libtool automake libproj-dev libboost-dev libboost-system-dev libboost-filesystem-dev libboost-thread-dev libexpat-dev gcc proj-bin libgeos-c1v5 libgeos++-dev libexpat-dev php-pgsql php-json php-db postgresql postgis postgresql-contrib postgresql-${POSTGRES_CLIENT_VERSION}-postgis-${POSTGIS_CLIENT_VERSION} postgresql-server-dev-${POSTGRES_CLIENT_VERSION} wget osm2pgsql osmosis gettext-base osmctools


# Install the linked geo data package for the lgd-osm-replication-sequences tool
RUN wget -qO - http://cstadler.aksw.org/repos/apt/conf/packages.precise.gpg.key  | sudo apt-key add - && \
    echo 'deb http://cstadler.aksw.org/repos/apt precise main contrib non-free' | sudo tee -a /etc/apt/sources.list.d/cstadler.aksw.org.list && \
    apt-get update && \
    apt-get install -y linkedgeodata


WORKDIR /app/nominatim

# Nominatim install
#ENV NOMINATIM_VERSION v2.5.1
#RUN git clone https://github.com/openstreetmap/Nominatim ./src
#RUN cd ./src && git checkout "$NOMINATIM_VERSION"

#RUN git clone --recursive https://github.com/openstreetmap/Nominatim ./src
#RUN cd ./src && git checkout "$NOMINATIM_VERSION" && git submodule update --recursive --init && \
#  ./autogen.sh && ./configure && make

COPY target/nominatim.jar .
RUN unzip nominatim.jar && mv Nominatim src

RUN echo "force rebuild b6"

# Nominatim create site

COPY local.php.dist ./src/settings/

COPY setup-patched.php ./src/utils/
RUN chmod +x ./src/utils/setup-patched.php

COPY update-patched.php ./src/utils/
RUN chmod +x ./src/utils/update-patched.php

COPY lib-patched.php ./lib/lib.php
RUN chmod +x ./lib/lib.php

COPY target/nominatim ./src/nominatim/
RUN chmod +x ./src/nominatim/nominatim

COPY target/osm2pgsql ./src/osm2pgsql/
RUN chmod +x ./src/osm2pgsql/osm2pgsql

COPY target/nominatim.so ./src/module/


COPY configuration.txt.dist ./src/settings/

#RUN rm -rf /var/www/html/* && ./src/utils/setup.php --create-website /var/www/html

# Apache configure
#COPY nominatim.conf /etc/apache2/sites-enabled/000-default.conf

#ENV DB_HOST test
#RUN echo "xxxyyyDB: ${DB_HOST} $DB_URL"

# Load initial data
#ENV PBF_DATA http://download.geofabrik.de/europe/monaco-latest.osm.pbf
#RUN curl -L $PBF_DATA --create-dirs -o /app/src/data.osm.pbf
#RUN service postgresql start && \
#    psql "$DB_URL" -c "CREATE ROLE nominatim;" || true && \
#    psql "$DB_URL" -c "CREATE ROLE www-data NOSUPERUSER NOCREATEDB NOCREATEROL;" || true && \
#    psql "$DB_URL" -c "CREATE DATABASE IF NOT EXISTS nominatim" && \
#    sudo -u postgres psql postgres -c "DROP DATABASE IF EXISTS nominatim" && \
#    useradd -m -p password1234 nominatim && \
#    chown -R nominatim:nominatim ./src && \
#    sudo -u nominatim ./src/utils/setup.php --osm-file /app/src/data.osm.pbf --all --threads 2 && \
#    service postgresql stop

#EXPOSE 5432
#EXPOSE 8080


COPY start.sh .
COPY wait-for-postgres.sh .
RUN chmod +x ./start.sh ./wait-for-postgres.sh
RUN sleep 3
CMD [ "./wait-for-postgres.sh", "./start.sh" ]

