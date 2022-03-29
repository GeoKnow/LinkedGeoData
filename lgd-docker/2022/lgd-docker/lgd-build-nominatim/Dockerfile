FROM ubuntu:22.04
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

RUN apt-get -qq -y update --fix-missing

# deps for nominatim according to doc
# Based on https://nominatim.org/release-docs/develop/appendix/Install-on-Ubuntu-20/
# Adapted for Ubuntu 22.04
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qq -y php-cgi \
    build-essential cmake g++ libboost-dev libboost-system-dev \
    libboost-filesystem-dev libexpat1-dev zlib1g-dev \
    libbz2-dev libpq-dev libproj-dev \
    postgresql-server-dev-14 postgresql-14-postgis-3 \
    postgresql-contrib-14 postgresql-14-postgis-3-scripts \
    php php-pgsql php-intl libicu-dev python3-dotenv \
    python3-psycopg2 python3-psutil python3-jinja2 \
    python3-icu python3-datrie \
    unzip

# lgd-osm-sync
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qq -y \
    wget curl osmosis gettext-base osmctools default-jre-headless

WORKDIR /app/nominatim

COPY target/nominatim.jar .
RUN unzip nominatim.jar
RUN mv Nominatim src

COPY database_import.py.patch .
RUN patch src/nominatim/tools/database_import.py database_import.py.patch

COPY target/country_osm_grid.sql.gz src/data/

RUN cmake src
RUN make

