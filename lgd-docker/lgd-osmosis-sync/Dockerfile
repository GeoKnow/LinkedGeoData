FROM lgd-build-nominatim:4.0.1
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

# RUN apt-get -qq -y update --fix-missing

# RUN DEBIAN_FRONTEND=noninteractive apt-get install -qq -y postgresql-14-postgis-3 wget sudo curl osmosis gettext-base osmctools

# TODO We actually just need the postgres client stuff, together with some postgis sql scripts - so no full db server needed

WORKDIR /lgd/osmosis

COPY configuration.txt.dist .

COPY start.sh .
COPY wait-for-postgres.sh .
RUN chmod +x ./start.sh ./wait-for-postgres.sh
RUN sleep 3
ENTRYPOINT [ "./wait-for-postgres.sh", "./start.sh" ]

