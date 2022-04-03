FROM lgd-build-nominatim:4.0.1
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

COPY target/linkedgeodata.deb .
RUN dpkg -i linkedgeodata.deb || true
RUN apt-get install -y -f

COPY start.sh .
COPY wait-for-postgres.sh .

RUN chmod +x ./start.sh ./wait-for-postgres.sh

CMD [ "./wait-for-postgres.sh", "./start.sh" ]

