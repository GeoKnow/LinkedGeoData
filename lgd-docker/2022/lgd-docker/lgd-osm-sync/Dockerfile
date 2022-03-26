FROM ubuntu:22.04
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

RUN apt-get -qq -y update --fix-missing

RUN DEBIAN_FRONTEND=noninteractive apt-get install -qq -y postgresql-14-postgis-3 wget sudo curl osmosis gettext-base osmctools

# TODO We actually just need the postgres client stuff, together with some postgis sql scripts - so no full db server needed

# && \
#    sudo apt-get install wget 
RUN wget -qO - http://cstadler.aksw.org/repos/apt/conf/packages.precise.gpg.key  | sudo apt-key add - && \
    echo 'deb http://cstadler.aksw.org/repos/apt precise main contrib non-free' | sudo tee -a /etc/apt/sources.list.d/cstadler.aksw.org.list && \
    apt update && \
    apt install -y linkedgeodata

WORKDIR /app/linkedgeodata

COPY configuration.txt.dist .

COPY start.sh .
COPY wait-for-postgres.sh .
RUN chmod +x ./start.sh ./wait-for-postgres.sh
RUN sleep 3
ENTRYPOINT [ "./wait-for-postgres.sh", "./start.sh" ]

