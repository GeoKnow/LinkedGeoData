FROM lgd-build-nominatim:4.0.1
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

RUN mkdir -p /srv/nominatim/nominatim-project/website && chmod -R a+x /srv/nominatim

# WORKDIR /srv/nominatim


# Apache configure
COPY nominatim.conf /etc/apache2/conf-available/

RUN a2enconf nominatim

COPY start.sh .
COPY wait-for-postgres.sh .
RUN chmod +x ./wait-for-postgres.sh ./start.sh 

ENTRYPOINT [ "./wait-for-postgres.sh", "./start.sh" ]

