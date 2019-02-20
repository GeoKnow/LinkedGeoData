FROM ubuntu:14.04
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8
RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

# Install packages http://wiki.openstreetmap.org/wiki/Nominatim/Installation#Ubuntu.2FDebian
RUN apt-get -y update --fix-missing && \
    apt-get install -y build-essential libxml2-dev libpq-dev libbz2-dev libtool automake \
    libproj-dev libboost-dev libboost-system-dev libboost-filesystem-dev \
    libboost-thread-dev libexpat-dev gcc proj-bin libgeos-c1 libgeos++-dev \
    libexpat-dev php5 php-pear php5-pgsql php5-json php-db libapache2-mod-php5 \
    postgresql postgis postgresql-contrib postgresql-9.3-postgis-2.1 \
    postgresql-server-dev-9.3 curl git autoconf-archive cmake python \
    lua5.1 liblua5.1-dev libluabind-dev \
    osmosis \
    gettext-base && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* /var/tmp/*


WORKDIR /app/nominatim

# Nominatim install
#ENV NOMINATIM_VERSION v2.5.1
#RUN git clone --recursive https://github.com/openstreetmap/Nominatim ./src
#RUN cd ./src && git checkout $NOMINATIM_VERSION && git submodule update --recursive --init && \
#  ./autogen.sh && ./configure && make

COPY target/nominatim.jar .
RUN unzip nominatim.jar && \
    mv Nominatim src && \
    chmod +x src/utils/setup.php


RUN echo "force rebuild 2"

# Nominatim create site
COPY target/local.php.dist ./src/settings/
#RUN rm -rf /var/www/html/* && ./src/utils/setup.php --create-website /var/www/html

# Apache configure
COPY nominatim.conf /etc/apache2/sites-enabled/000-default.conf

#ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

COPY start.sh ./start.sh

RUN chmod +x ./start.sh

RUN sleep 3

ENTRYPOINT ./start.sh


