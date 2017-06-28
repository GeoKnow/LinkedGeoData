package org.aksw.linkedgeodata.osm.replication.dao;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.net.URI;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.AbstractMap.SimpleEntry;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Optional;
import java.util.Properties;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.stream.Collectors;

import javax.ws.rs.core.UriBuilder;

import org.apache.commons.io.IOUtils;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.rdf.model.Resource;
import org.apache.jena.riot.RDFDataMgr;
import org.apache.jena.riot.RDFFormat;
import org.apache.jena.vocabulary.DCTerms;
import org.apache.jena.vocabulary.RDF;
import org.apache.jena.vocabulary.RDFS;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.codepoetics.protonpack.StreamUtils;
import com.google.common.collect.LinkedListMultimap;
import com.google.common.collect.Multimap;

public class OsmRepoCoreDaoImpl
    implements OsmRepoCoreDao
{
    private static final Logger logger = LoggerFactory.getLogger(OsmRepoCoreDaoImpl.class);

    protected URI baseUri;
    protected Function<Long, String> sequenceIdFormatter;

    protected Map<String, BiFunction<Resource, Object, Object>> keyToParser;

    public static Calendar toCalendar(Instant instant) {
        Calendar result = GregorianCalendar.from(ZonedDateTime.ofInstant(instant, ZoneId.systemDefault()));
        return result;
    }

    public OsmRepoCoreDaoImpl(URI baseUri) { //, TemporalUnit updateInterval) {
        super();
        this.baseUri = baseUri;

        //this.updateInterval = updateInterval;
        //this.avgUpdateIntervalInS =
        this.sequenceIdFormatter = new SequenceIdFormatter();

        keyToParser = new HashMap<>();
        keyToParser.put("timestamp", (r, v) -> r.addLiteral(DCTerms.created, toCalendar(Instant.parse("" + v))));
        keyToParser.put("comment", (r, v) -> r.addLiteral(RDFS.comment, v));
        keyToParser.put("sequenceNumber", (r, v) -> r.addLiteral(DCTerms.identifier, Long.parseLong("" + v)));

        //avgUpdateIntervalInS = (long)determineTemporalUnit();
    }

    @Override
    public URI getBaseUri() {
        return baseUri;
    }


    @Override
    public State getMostRecentState() throws Exception {
        URI uri = UriBuilder.fromUri(baseUri).path("state.txt").build();
        State result = getState(uri);
        return result;
    }

    @Override
    public State getState(long seqId) throws Exception {
        String path = sequenceIdFormatter.apply(seqId) + ".state.txt";
        URI uri = UriBuilder.fromUri(baseUri).path(path).build(); // path("state.txt")
        State result = getState(uri);
        return result;
    }


    public State getState(URI uri) throws Exception {
        logger.debug("Attempting to retrieve: " + uri);

        URLConnection conn = uri.toURL().openConnection();
        conn.setReadTimeout(10000);
        conn.setConnectTimeout(10000);

        Properties properties = new Properties();

        StringWriter w = new StringWriter();
        IOUtils.copy(conn.getInputStream(), w, StandardCharsets.UTF_8);
        String content = w.toString();
        logger.info("Retrieving state information for " + uri);
        logger.info("Reponse from " + uri + ": " + content);

        properties.load(new ByteArrayInputStream(content.getBytes(StandardCharsets.UTF_8)));


//        Multimap<String, Entry<Long, String>> rawAttrs = parseMap(new ByteArrayInputStream(content.getBytes(StandardCharsets.UTF_8)));
//        Map<String, String> attrs = rawAttrs.entries().stream().collect(Collectors.toMap(Entry::getKey, e -> e.getValue().getValue()));

        State result = ModelFactory.createDefaultModel()
                .createResource()
                .addProperty(RDF.type, LgdPersonality.State)
                .as(State.class);

        properties.entrySet().forEach(e ->
            Optional.ofNullable(keyToParser.get(e.getKey()))
                .ifPresent(p -> p.apply(result, e.getValue())));

        return result;
    }



    public static void main(String[] args) throws Exception {

        LgdPersonality.init();
        Instant src = Instant.parse("2017-05-26T20:44:02Z");

        //OsmRepoDao repoDao = OsmRepoDaoImpl.create("http://download.geofabrik.de/europe/monaco-updates");
        OsmRepoDao repoDao = OsmRepoDaoImpl.create("http://planet.openstreetmap.org/replication/hour/");

        State state = repoDao.findState(src);

        if(state != null) {
            RDFDataMgr.write(System.out, state.getModel(), RDFFormat.TURTLE_PRETTY);
        } else {
            System.out.println("No state found");
        }


        //
//        //System.out.println(df.format(bd.longValue()));
//        Function<Long, String> seqToPath = new SequenceIdFormatter();
//        System.out.println(seqToPath.apply(1234l));
//
//        long srcSeqId = 1000;
//        Instant src = Instant.parse("2017-05-26T20:44:02Z");
//        Instant end = Instant.parse("2017-06-26T20:44:02Z");
//
//        long delta = ChronoUnit.DAYS.between(src, end);
//        System.out.println("Duration: " + delta);
//
//
//
//        long tgtSeqId = srcSeqId - delta;
//
//        System.out.println("tgtSeqId: " + tgtSeqId);
//
//
//        OsmRepository repo = new OsmRepositoryImpl(new URI("http://download.geofabrik.de/europe/monaco-updates"));
//        State r = repo.getMostRecentState();
//        RDFDataMgr.write(System.out, r.getModel(), RDFFormat.TURTLE_PRETTY);
//
//        System.out.println(r.getSeqId());
//        System.out.println(r.getTimestamp());

    }





    public static Multimap<String, Entry<Long, String>> parseMap(InputStream in) throws IOException {
        List<String> lines = IOUtils.readLines(in, StandardCharsets.UTF_8);

        Multimap<String, Entry<Long, String>> result = LinkedListMultimap.create();
        StreamUtils.zipWithIndex(lines.stream()).forEach(indexedLine -> {

            String line = indexedLine.getValue().trim();
            long index = indexedLine.getIndex();
            String k;
            String v;

            if(line.startsWith("#")) {
                k = "@comment";
                v = line;
            } else {
                List<String> parts = Arrays.asList(line.split("=", 2)).stream().map(String::trim).collect(Collectors.toList());
                if(parts.size() == 2) {
                    k = parts.get(0);
                    v = parts.get(1);
                } else {
                    k = "@error";
                    v = line;
                }
            }

            //Indexed<String> tmp = Indexed.index(index, v);
            Entry<Long, String> tmp = new SimpleEntry<>(index, v);
            result.put(k, tmp);

//            return r;
        });

//        .collect(Collectors.toMap(
//                Entry::getKey,
//                Entry::getValue,
//                (u, v) -> { throw new IllegalStateException(String.format("Duplicate key %s", u)); },
//                LinkedListMultimap::new));

        return result;
    }

}
