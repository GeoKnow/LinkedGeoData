FROM mdillon/postgis:9.5
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y gettext-base

# Setting sysctls is done via docker compose (using the line below will give a read only filesystem error)
#RUN echo "kernel.shmmax=4294967296" > /etc/sysctl.conf && sysctl -p

# TODO It might be nicer if the DB config is updated from the environment on every container (re)start
COPY etc/postgresql/9.5/main/postgresql.conf.dist /app/postgresql/postgresql.conf.dist
#etc/postgresql/9.5/main/postgresql.conf
#COPY target/postgresql.conf /etc/postgresql/9.5/main/postgresql.conf

# Note: Ideally I would like to put the nominatim lib into e.g. /usr/lib/postgresql/${POSTGRES_VERSION}/lib/
# However, the way nominatim's setup script works, it will create a stored proceduce in the database which looks up the library under a path
# relative to the setup script. Hence, right now we need to align the nominatim.so path of this image with that of lgd-nominatim.
COPY target/nominatim.so /app/nominatim/src/module/nominatim.so

#HEALTHCHECK CMD ["psql", $DB_URL, "-c", "SELECT 1"]

#HEALTHCHECK --interval=1s --retries=180 CMD su postgres -c 'psql -c "SELECT 1"' || exit 1

HEALTHCHECK --interval=1s --retries=180 CMD psql -U "$DB_USER" -c "SELECT 1" || exit 1

#WORKDIR /app/postgres

#RUN service postgresql stop

COPY start.sh ./start.sh
RUN chmod +x ./start.sh && sleep 1

ENTRYPOINT ["./start.sh"]
CMD ["postgres"]

