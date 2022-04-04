FROM lgd-build-nominatim:4.0.1
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

RUN mkdir -p /srv/nominatim/nominatim-project/website && chmod -R a+x /srv/nominatim

# Apache configure
COPY nominatim.conf /etc/apache2/conf-available/

WORKDIR /srv/nominatim/nominatim-ui

COPY target/nominatim-ui.tar.gz .
RUN tar --strip-components 1 -xf nominatim-ui.tar.gz
RUN echo "Nominatim_Config.Nominatim_API_Endpoint='../../nominatim/'" > dist/theme/config.theme.js

WORKDIR /lgd/nominatim

RUN a2enmod rewrite
RUN a2enconf nominatim

COPY start.sh .
COPY wait-for-postgres.sh .
RUN chmod +x ./wait-for-postgres.sh ./start.sh 

ENTRYPOINT [ "./wait-for-postgres.sh", "./start.sh" ]

