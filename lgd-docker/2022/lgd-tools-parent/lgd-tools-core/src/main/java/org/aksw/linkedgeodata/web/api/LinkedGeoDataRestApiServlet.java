package org.aksw.linkedgeodata.web.api;

import java.awt.geom.Point2D;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.UriBuilder;

import org.aksw.commons.util.StreamUtils;
import org.aksw.commons.util.strings.StringUtils;
import org.aksw.jena_sparql_api.core.QueryExecutionFactory;
import org.aksw.jena_sparql_api.delay.extra.Delayer;
import org.aksw.jena_sparql_api.delay.extra.DelayerDefault;
import org.apache.jena.graph.Node;
import org.apache.jena.rdf.model.Model;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.rdf.model.Resource;
import org.apache.jena.vocabulary.DCTerms;
import org.apache.jena.vocabulary.OWL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

@Service
@Path("/")
public class LinkedGeoDataRestApiServlet {

    private static final Logger logger = LoggerFactory.getLogger(LinkedGeoDataRestApiServlet.class);

    private static LGDVocab vocab = new LGDVocabDefault();

    private Map<String, String> prefixMap = new HashMap<String, String>();


    @Autowired
    private HttpServletRequest req;

//    @Context
//    private ServletContext servletContext;
//
//    @javax.annotation.Resource(name="sparqlServiceFactory")
//    private SparqlServiceFactory sparqlServiceFactory;

//    @javax.annotation.Resource(name="queryExecutionFactory")
    @Autowired
    private QueryExecutionFactory qef;

    @javax.annotation.Resource(name="lgdSparqlServiceUrl")
    private String lgdSparqlServiceUrl;

    public LinkedGeoDataRestApiServlet() {

    }

    private Model createModel() {
        Model result = ModelFactory.createDefaultModel();
        result.setNsPrefixes(prefixMap);

        return result;
    }

    @GET
    @Path("/node/{id}")
    public Model describeNode(@PathParam("id") long id) {
        return describe("http://linkedgeodata.org/triplify/node" + id);
    }

    @GET
    @Path("/way/{id}")
    public Model describeWay(@PathParam("id") long id) {
        return describe("http://linkedgeodata.org/triplify/way" + id);
    }

    @GET
    @Path("/relation/{id}")
    public Model describeRelation(@PathParam("id") long id) {
        return describe("http://linkedgeodata.org/triplify/relation" + id);
    }

    /*
     * @GET
     *
     * @Path("/within/{yMin}-{yMax},{xMin}-{xMax}/{className}") //
     * /label/{lang}/{predicate}/{value}") public Model
     * within(@PathParam("xMin") double xMin, @PathParam("xMax") double xMax,
     *
     * @PathParam("yMin") double yMin, @PathParam("yMax") double yMax,
     *
     * @PathParam("className") String className) {
     *
     * }
     */

    @GET
    @Path("/recent")
    public Model recent() {
        String query = "Construct { ?s ?p ?o } { ?s ?p ?o . Filter(?p = <"
                + DCTerms.modified + ">) . } Order By Desc(?o) Limit 1000";

        System.out.println(query);

        Model result = qef.createQueryExecution(query).execConstruct();

        return result;
    }

    @GET
    @Path("/intersects/{yMin}-{yMax},{xMin}-{xMax}/class/{className}")
    // /label/{lang}/{predicate}/{value}")
    public Model nearClass(@PathParam("xMin") double xMin,
            @PathParam("xMax") double xMax, @PathParam("yMin") double yMin,
            @PathParam("yMax") double yMax,
            @PathParam("className") String className) {
        Point2D.Double a = new Point2D.Double(xMin, yMin);
        Point2D.Double b = new Point2D.Double(xMax, yMax);

        // Rectangle2D.Double c = new Rectangle2D.Double(a.x, a.y, b.x - a.x,
        // b.y - a.y);

        String polygon = "POLYGON((" + a.x + " " + a.y + "," + b.x + " " + a.y
                + "," + b.x + " " + b.y + "," + a.x + " " + b.y + "," + a.x
                + " " + a.y + "))";

        String filter = "Filter(ogc:intersects(?geo, ogc:geomFromText('"
                + polygon + "')))";

        String typeTriple = "";
        if (className != null) {
            // TODO: Support resolving class labels

            typeTriple = "?s a <http://linkedgeodata.org/ontology/" + className
                    + "> . ";
        }

        // Flat
        String query = "Prefix meta:<http://linkedgeodata.org/meta/> Prefix geom:<http://geovocab.org/geometry#> Prefix ogc:<http://www.opengis.net/ont/geosparql#> "
                + "Construct { ?s ?p ?o } {\n"
                + "?s a ?t . "
                + "Filter(?t = meta:Node || ?t = meta:Way) ."
                + typeTriple
                + "?s geom:geometry ?x ."
                + "?x ogc:asWKT ?geo ."
                + "?s ?p ?o . " + filter + "} Order By ?s Limit 1000";

        /*
         * + "Union " + "{ ?s a meta:Way . " + typeTriple +
         * " ?s geom:geometry ?x . ?x ogc:asWKT ?geo . ?s ?p ?o . " + filter +
         * "}" +"} Order By ?s Limit 1000";
         */
        // Intersects as sub-query
        // String query =
        // "Prefix geom:<http://geovocab.org/geometry#> Prefix ogc:<http://www.opengis.net/ont/geosparql#> Construct { ?s ?p ?o } { "
        // + typeTriple +
        // " ?s ?p ?o . { Select ?s { ?s geom:geometry ?x . ?x ogc:asWKT ?geo . "
        // + filter + "} } } Limit 1000";

        // Test query
        // String query =
        // "Prefix geom:<http://geovocab.org/geometry#> Prefix ogc:<http://www.opengis.net/ont/geosparql#> Construct { ?s ?p ?o } { ?s ?p ?o . ?s geom:geometry ?x . ?x ogc:asWKT ?geo . "
        // + filter + "} Order By ?s Limit 1000";

        // ???
        // String query =
        // "Prefix geom:<http://geovocab.org/geometry#> Prefix ogc:<http://www.opengis.net/ont/geosparql#> Construct { ?s ?p ?o } { { Select ?s { "
        // + typeTriple +
        // " ?s geom:geometry ?x . ?x ogc:asWKT ?geo } Order By Asc(?s) Limit 1000 }. ?s ?p ?o . "
        // + filter + "} Order By Asc(?s) Limit 1000";

        logger.debug(query);

        Model result = qef.createQueryExecution(query).execConstruct();

        return result;
    }

    @GET
    @Path("/intersects/{yMin}-{yMax},{xMin}-{xMax}")
    public Model nearBasic(@PathParam("xMin") double xMin,
            @PathParam("xMax") double xMax, @PathParam("yMin") double yMin,
            @PathParam("yMax") double yMax) {
        return nearClass(xMin, xMax, yMin, yMax, null);
    }

    /**
     *
     * @param x
     * @param y
     * @param radius
     *            in meters
     * @return
     */
    @GET
    @Path("/intersects/{y},{x}/{radius}")
    public Model nearBasic(@PathParam("x") double x, @PathParam("y") double y,
            @PathParam("radius") double radius) {
        return nearClass(x, y, radius, null);
    }

    @GET
    @Path("/intersects/{y},{x}/{radius}/class/{class}")
    public Model nearClass(@PathParam("x") double x, @PathParam("y") double y,
            @PathParam("radius") double radius,
            @PathParam("class") String className) {
        return nearClasses(new Point2D.Double(x, y), radius, className);
    }

    public Model nearClasses(Point2D point, double radius, String className) {
        String filter = "Filter(bif:st_intersects(?geo, bif:st_point("
                + point.getY() + ", " + point.getX() + "), " + radius + "))";

        String typeTriple = "";
        if (className != null) {
            // TODO: Support resolving class labels
            typeTriple = "?s a <http://linkedgeodata.org/ontology/" + className
                    + "> . ";
        }

        // Flat
        String query = "Prefix meta:<http://linkedgeodata.org/meta/>\n"
                + "Prefix geom:<http://geovocab.org/geometry#>\n"
                + "Prefix ogc:<http://www.opengis.net/ont/geosparql#>\n"
                + "PREFIX bif: <http://www.openlinksw.com/schemas/bif#>\n"
                + "Construct { ?s ?p ?o } {\n" + "?s a ?t .\n"
                + "Filter(?t = meta:Node || ?t = meta:Way) .\n" + typeTriple
                + " ?s geom:geometry ?x .\n" + "?x ogc:asWKT ?geo .\n"
                + "?s ?p ?o . " + filter + "} Order By ?s Limit 1000";

        logger.debug(query);

        Model result = qef.createQueryExecution(query).execConstruct();

        return result;
    }

    @GET
    @Path("/ontology")
    public Model getOntology() throws Exception {
        String query = "Construct { ?s ?p ?o } { ?s a <" + OWL.Class.toString()
                + "> . ?s ?p ?o . }";
        Model result = qef.createQueryExecution(query).execConstruct();

        // result.write(System.out, "TURTLE");

        return result;
    }

    class JsonResponseItem {
        String osm_type;
        long osm_id;

        public JsonResponseItem() {
        }

        public String getOsm_type() {
            return osm_type;
        }

        public void setOsm_type(String osm_type) {
            this.osm_type = osm_type;
        }

        public long getOsm_id() {
            return osm_id;
        }

        public void setOsm_id(long osm_id) {
            this.osm_id = osm_id;
        }
    }

    private Delayer delayer = new DelayerDefault(1000);

    @GET
    @Path("/geocode")
    public Model geocode(@QueryParam("q") String queryString) throws Exception {
        delayer.doDelay();

        // queryString = StringUtils.urlDecode(queryString);

        String geocodeServiceUri = "http://open.mapquestapi.com/nominatim/v1/search";
        // http://nominatim.openstreetmap.org/search
        URL url = UriBuilder.fromUri(geocodeServiceUri)
                .queryParam("q", queryString)
                .queryParam("format", "json")
                .build()
                .toURL();

//        List<NameValuePair> newQsArgs = new ArrayList<NameValuePair>();
//        newQsArgs.add(new BasicNameValuePair("q", queryString));
//        newQsArgs.add(new BasicNameValuePair("q", queryString));
//        String newQs = URLEncodedUtils.format(newQsArgs, "UTF8");

//        String uri = geocodeServiceUri + "?format=json&q=" + queryString;

        //URL url = new URL(uri);
        URLConnection c = url.openConnection();
        c.setRequestProperty("User-Agent",
                "http://linkedgeodata.org, mailto:cstadler@informatik.uni-leipzig.de");

        InputStream ins = c.getInputStream();

        ByteArrayOutputStream out = new ByteArrayOutputStream();
        StreamUtils.copyThenClose(ins, out);

        String json = out.toString();

        Gson gson = new Gson();

        Type collectionType = new TypeToken<Collection<JsonResponseItem>>() {
        }.getType();
        Collection<JsonResponseItem> items = gson
                .fromJson(json, collectionType);

        // gson.fromJson(json, JsonResponseItem.class);

        //List<Resource> resources = new ArrayList<Resource>();
        List<Node> nodes = new ArrayList<Node>();
        for (JsonResponseItem item : items) {
            Resource resource = null;

            if (item.getOsm_type().equals("node")) {
                resource = vocab.createNIRNodeURI(item.getOsm_id());
            } else if (item.getOsm_type().equals("way")) {
                resource = vocab.createNIRWayURI(item.getOsm_id());
            } else if (item.getOsm_type().equals("relation")) {
                resource = vocab.createNIRRelationURI(item.getOsm_id());
            }
            else {
                continue;
            }

            nodes.add(resource.asNode());
        }

        Model result = createModel();

        // String lgdService = "http://live.linkedgeodata.org/sparql";
        //QueryExecutionFactoryHttp sparqlService = new QueryExecutionFactoryHttp(lgdService, Collections.singleton("http://linkedgeodata.org"));

        //LookupService lookupService = new LookupServiceSparqlQuery(sparqlService, query, var);


        for (Node node : nodes) {
            // QueryExecution qe = qef.createQueryExecution("Describe <" +
            // resource.toString() + ">");
            // qe.execDescribe(result);

            // Workaround for Virtuoso returning invalid XML (which means we
            // can't use the query execution
            String serviceUri = lgdSparqlServiceUrl + "?format=text%2Fplain&default-graph-uri=http%3A%2F%2Flinkedgeodata.org&query=DESCRIBE+<"
                    + StringUtils.urlEncode(node.getURI()) + ">";

            URL serviceUrl = new URL(serviceUri);
            URLConnection conn = serviceUrl.openConnection();
            conn.addRequestProperty("Accept", "text/plain");

            /*
             * ByteArrayOutputStream out1 = new ByteArrayOutputStream();
             * StreamUtils.copy(serviceUrl.openStream(), out1); String nt =
             * out1.toString();
             */

            InputStream in = null;
            try {
                in = conn.getInputStream();
                result.read(in, null, "N-TRIPLE");
            } finally {
                if (in != null) {
                    in.close();
                }
            }

            /*
             * String tmp = "DESCRIBE <" + resource + ">";
             * System.out.println(tmp); QueryExecution qe =
             * qef.createQueryExecution(tmp); qe.execDescribe(result);
             */

        }

        return result;
    }

    public Model describe(String uri) {
        String query = "Construct { ?s ?p ?o . } { ?s ?p ?o . Filter(?s = <"
                + uri + ">) . }";
        // String query = "Describe <" + uri + ">";

        return qef.createQueryExecution(query).execConstruct();
    }

    /*************************************************************************/
    /* Helper methods for processing class and label restrictions */
    /*************************************************************************/

    /*
     * private String getLabelFilter(String var, String label, String matchMode,
     * String value) { if (label == null || matchMode == null) return null;
     *
     * if (matchMode.equalsIgnoreCase("contains")) { //mm =
     * TagFilterUtils.MatchMode.ILIKE; label = "%" + label.replace("%", "\\%") +
     * "%";
     *
     * } else if (matchMode.equalsIgnoreCase("startsWith")) { //mm =
     * TagFilterUtils.MatchMode.ILIKE; //label = label.replace("%", "\\%") +
     * "%"; return "Filter(regex(?" + var + ", " + value + ", 'i')"
     *
     * } if (matchMode.equalsIgnoreCase("ccontains")) { mm =
     * TagFilterUtils.MatchMode.LIKE; label = "%" + label.replace("%", "\\%") +
     * "%"; } else if (matchMode.equalsIgnoreCase("cstartsWith")) { mm =
     * TagFilterUtils.MatchMode.LIKE; label = label.replace("%", "\\%") + "%"; }
     *
     * return new Pair<String, TagFilterUtils.MatchMode>(label, mm); }
     *
     * private List<String> getEntityTagCondititions(String var, String
     * className, String label, String language, String matchMode) { String
     * result = "";
     *
     * result += "Filter(?" + var + " a " }
     */

}
