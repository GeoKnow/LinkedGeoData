#!/bin/bash

#
# This script
# installs the packages required for running LinkedGeoData on
# Ubuntu 22.04
#

# Nominatim dependencies
apt-get install -qq -y php-cgi \
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
apt-get install -qq -y \
    wget curl osmosis gettext-base osmctools default-jre-headless

