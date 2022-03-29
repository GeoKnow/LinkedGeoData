FROM postgis/postgis:14-3.2-alpine
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>

RUN apk add gettext

COPY etc/postgresql/14/main/postgresql.conf.dist /conf/

# Note: Ideally I would like to put the nominatim lib into e.g. /usr/lib/postgresql/${POSTGRES_VERSION}/lib/
# However, the way nominatim's setup script works, it will create a stored proceduce in the database which looks up the library under a path
# relative to the setup script. Hence, right now we need to align the nominatim.so path of this image with that of lgd-nominatim.
COPY target/nominatim.so /lgd/nominatim/module/nominatim.so

# HEALTHCHECK CMD ["psql", $DB_URL, "-c", "SELECT 1"]
# HEALTHCHECK --interval=1s --retries=180 CMD psql -U "$DB_USER" -c "SELECT 1" || exit 1

COPY start.sh ./start.sh
RUN chmod +x ./start.sh

ENTRYPOINT ["./start.sh"]
CMD ["postgres"]

