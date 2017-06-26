FROM ubuntu:14.04
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt-get -y update --fix-missing && \
#    apt-get upgrade -y && \
    apt-get install -y software-properties-common wget git curl sudo && \
#    add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" && \
#    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    apt-get update

ENV POSTGRES_VERSION 9.3
ENV POSTGIS_VERSION 2.1

# for 16.04: libgeos-c1v5
RUN apt-get install -y build-essential libxml2-dev libpq-dev libbz2-dev libtool automake libproj-dev libboost-dev libboost-system-dev libboost-filesystem-dev libboost-thread-dev libexpat-dev gcc proj-bin libgeos-c1 libgeos++-dev libexpat-dev php5 php-pear php5-pgsql php5-json php-db libapache2-mod-php5 postgresql postgis postgresql-contrib postgresql-${POSTGRES_VERSION}-postgis-${POSTGIS_VERSION} postgresql-server-dev-${POSTGRES_VERSION} wget osm2pgsql osmosis

WORKDIR /app/nominatim

# Nominatim install
ENV NOMINATIM_VERSION v2.5.1
RUN git clone --recursive https://github.com/openstreetmap/Nominatim ./src
RUN cd ./src && git checkout $NOMINATIM_VERSION && git submodule update --recursive --init && \
  ./autogen.sh && ./configure && make


# Nominatim create site

# FIXME Eventually get rid of the need for the .pgpass file, but the latest osm2pgsql tool fails to read password from the PGPASS environment variable
# Alternatively, create the file dynamically within the container
COPY target/.pgpass /root/.pgpass
RUN chmod 600 /root/.pgpass

COPY local.php.dist ./src/settings/local.php.dist

COPY setup-patched.php ./src/utils/setup-patched.php

RUN chmod +x ./src/utils/setup-patched.php


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

COPY start.sh ./start.sh
CMD ./start.sh

