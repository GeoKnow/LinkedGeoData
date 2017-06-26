FROM ubuntu:16.04
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

ENV NOMINATIM_VERSION v2.5.1
ENV POSTGRES_VERSION 9.5
ENV POSTGIS_VERSION 2.2

ENV DEBIAN_FRONTEND noninteractive


# Install packages http://wiki.openstreetmap.org/wiki/Nominatim/Installation#Ubuntu.2FDebian
# Replacements: libgeos-c1 -> libgeos-c1v5

RUN \
    apt-get -y update --fix-missing && \
#    apt-get upgrade -y && \
    apt-get install -y software-properties-common wget git curl sudo && \
#    add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" && \
#    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    apt-get update


RUN apt-get install -y build-essential libxml2-dev libpq-dev libbz2-dev libtool automake libproj-dev libboost-dev libboost-system-dev libboost-filesystem-dev libboost-thread-dev libexpat-dev gcc proj-bin libgeos-c1v5 libgeos++-dev libexpat-dev php php-pear php-pgsql php-json php-db libapache2-mod-php postgresql postgis postgresql-contrib postgresql-${POSTGRES_VERSION}-postgis-${POSTGIS_VERSION} postgresql-server-dev-${POSTGRES_VERSION} wget

WORKDIR /app/nominatim

# Nominatim install
RUN git clone --recursive https://github.com/openstreetmap/Nominatim ./src
RUN cd ./src && git checkout $NOMINATIM_VERSION && git submodule update --recursive --init && \
  ./autogen.sh && ./configure && make


