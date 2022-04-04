FROM aklakan/sparqlify AS sparqlify

FROM lgd-build-nominatim:4.0.1
MAINTAINER Claus Stadler <cstadler@informatik.uni-leipzig.de>


VOLUME /lgd/sparqlify/conf
WORKDIR /lgd/sparqlify

COPY --from=sparqlify /app .
RUN sed -Ei 's|/app/|/lgd/sparqlify/|g' jib-classpath-file

COPY start.sh .
COPY wait-for-postgres.sh .
RUN chmod +x ./wait-for-postgres.sh ./start.sh

ENTRYPOINT [ "./wait-for-postgres.sh", "./start.sh" ]


EXPOSE 7531
#-Q "SELECT * { ?s ?p ?o } LIMIT 10"

