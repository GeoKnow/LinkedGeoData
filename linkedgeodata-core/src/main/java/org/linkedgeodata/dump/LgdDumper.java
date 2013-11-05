/**
 * Dumper for the simple schema of postgres.
 * 
 * 
 */
package org.linkedgeodata.dump;


import java.io.OutputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.aksw.commons.collections.SinglePrefetchIterator;
import org.aksw.commons.util.strings.StringUtils;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.GnuParser;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Options;
import org.apache.commons.collections15.map.LRUMap;
import org.apache.commons.validator.UrlValidator;
import org.apache.jena.atlas.lib.Sink;
import org.apache.jena.riot.out.SinkTripleOutput;
import org.apache.log4j.PropertyConfigurator;
import org.postgis.PGgeometry;
import org.postgresql.ds.PGSimpleDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Joiner;
import com.hp.hpl.jena.datatypes.RDFDatatype;
import com.hp.hpl.jena.datatypes.TypeMapper;
import com.hp.hpl.jena.graph.Node;
import com.hp.hpl.jena.graph.Triple;
import com.hp.hpl.jena.rdf.model.Property;
import com.hp.hpl.jena.rdf.model.Resource;
import com.hp.hpl.jena.rdf.model.ResourceFactory;
import com.hp.hpl.jena.sparql.expr.NodeValue;
import com.hp.hpl.jena.vocabulary.RDF;

interface GeometryRdfSerializer {
	void write(PGgeometry geometry, Sink<Triple> sink);
}

class GeoVocabRdfSerializer implements GeometryRdfSerializer {

	public void write(PGgeometry geometry, Sink<Triple> sink) {
	}
}

class ValidatingSink
	implements Sink<Triple>
{
	private static UrlValidator urlValidator = new UrlValidator();

	
	private Sink<Triple> decoratee;
	
	private Sink<Triple> errorSink;
	
	
	public LRUMap<Node, Boolean> cache = new LRUMap<Node, Boolean>(1000);
	
	public ValidatingSink(Sink<Triple> decoratee)
	{
		this.decoratee = decoratee;
	}
	
	public ValidatingSink(Sink<Triple> decoratee, Sink<Triple> errorSink)
	{
		this.decoratee = decoratee;
		this.errorSink = errorSink;
	}

	
	@Override
	public void close() {
		// TODO Auto-generated method stub
		
	}
	
	public boolean validateResourceCached(Node node) {
		Boolean result = cache.get(node);
		if(result == null) {
			result = validateResource(node);
			
			cache.put(node, result);
		}
		
		return result;
	}

	public boolean validateNodeCached(Node node) {
		Boolean result = cache.get(node);
		if(result == null) {
			result = validateNode(node);
			
			cache.put(node, result);
		}
		
		return result;
	}

	
	public static boolean validateResource(Node node) {
		if(node.isBlank()) {
			return true;
		}

		if(!node.isURI()) {
			return false;
		}

		if(node.getURI().startsWith("mailto:")) {
			return true;
		}
		
		return urlValidator.isValid(node.getURI());
	}

	public static boolean validateNode(Node node) {
		if(node.isLiteral()) {
			/*
			String dt = node.getLiteralDatatypeURI();
			if(dt == null || dt.isEmpty()) {
				return true;
			}
			*/
			
			return true; 
		} else {
			return validateResource(node);
		}
	}
	
	@Override
	public void send(Triple item) {
		if(validateResourceCached(item.getSubject()) && validateResourceCached(item.getPredicate()) && validateNodeCached(item.getObject())) {
			decoratee.send(item);
		} else if(errorSink != null) {
			errorSink.send(item);
		}
	}

	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}
	
}

/**
 * Post process prefixed values, such as
 * (http://en.wikipedia.org/wiki, <some title>)
 * 
 * @author raven
 *
 */
interface PostProcessor
{
	Node process(String prefix, String value);
}

class DefaultPostProcessor
	implements PostProcessor
{
	private static DefaultPostProcessor instance = null;
	
	public static DefaultPostProcessor getInstance() {
		if(instance == null) {
			synchronized(DefaultPostProcessor.class) {
				if(instance == null) {
					instance = new DefaultPostProcessor();
				}
			}
		}
		
		return instance;
	}
	
	public Node process(String prefix, String value) {
		//return Node.createURI(prefix + value);
		return LgdDumper.createFixedNodeUri(prefix + value);
	}
}


class UCamelizeAndUrlEncodePostProcessor
	implements PostProcessor
{

	public Node process(String prefix, String value) {
		String camelized = StringUtils.toUpperCamelCase(value.replace(' ', '_'));
		String encoded = StringUtils.urlEncode(camelized);
		
		//return Node.createURI(prefix + encoded);
		return LgdDumper.createFixedNodeUri(prefix + encoded);
	}
}



class MediaWikiTitlePostProcessor
	implements PostProcessor
{
	// Namespace names must be ucFirst and with underscores
	private static Set<String> namespaces = new HashSet<String>(Arrays.asList(
			"Media",
			"Special",
			"Talk",
			"User",
			"User_talk",
			"Wikipedia",
			"Wikipedia_talk",
			"File",
			"File_talk",
			"Mediawiki",
			"Mediawiki_talk",
			"Template",
			"Template_talk",
			"Help",
			"Help_talk",
			"Category",
			"Category_talk",
			"Portal",
			"Portal_talk",
			"Book",
			"Book_talk"			
			));
	
	private static Pattern pattern = Pattern.compile("wikipedia.org/wiki/(.*)");
	
	public static String fragmentIdentifierEncode(String str) {
		return StringUtils.urlEncode(str).replace('%', '.');
	}
	
	public Node process(String prefix, String value) {
		String effectiveValue = value;
		Matcher matcher = pattern.matcher(value);
		if(matcher.find()) {
			effectiveValue = matcher.group(1);
		}

		
		// We assume that a decoded string equals the encoded one
		effectiveValue = StringUtils.urlDecode(effectiveValue);
		
		String canonicalized = MediawikiUtils.toCanonicalWikiCase(effectiveValue, namespaces);

		String[] parts = canonicalized.split("#", 0);
		
		String encoded = StringUtils.urlEncode(parts[0].trim());
		if(parts.length == 2) {
			encoded += "#" + fragmentIdentifierEncode(parts[1].trim());
		}
				
		/*
		String encoded = canonicalized.contains("%")
				? StringUtils.urlEncode(canonicalized)
				: canonicalized;
		*/
		
		return LgdDumper.createFixedNodeUri(prefix + encoded);

		/*
		// Check if it already forms a valid uri
		try {
			return LgdDumper.createFixedNodeUri(prefix + canonicalized);
			
			//return Node.createURI(url.toString());
		} catch(Exception e) {
			String encoded = StringUtils.urlEncode(canonicalized);
			
			//return Node.createURI(prefix + encoded);
			return LgdDumper.createFixedNodeUri(prefix + encoded);
		}
		*/
	}
}


class ResultSetIterator
	extends SinglePrefetchIterator<ResultSet>
{
	private ResultSet rs;
	
	public ResultSetIterator(ResultSet rs) {
		this.rs = rs;
	}
	
	@Override
	protected ResultSet prefetch() throws Exception {
		return rs.next() ? rs : finish();
	}	
}



/**
 * Hello world!
 * 
 */
public class LgdDumper {
	public static void printHelpAndExit(int exitCode) {
		HelpFormatter formatter = new HelpFormatter();
		formatter.printHelp(LgdDumper.class.getName(), cliOptions);
		System.exit(exitCode);
	}

	private static final Logger logger = LoggerFactory
			.getLogger(LgdDumper.class);
	private static final Options cliOptions = new Options();

	public static void main(String[] args) throws Exception {
		PropertyConfigurator.configure("log4j.properties");

		/*
		 * LogManager.getLogManager().readConfiguration( new
		 * FileInputStream("jdklog.properties"));
		 */

		CommandLineParser cliParser = new GnuParser();

		/*
		cliOptions.addOption("t", "type", true,
				"Database type (posgres, mysql,...)");
		*/
		cliOptions.addOption("d", "database", true, "Database name");
		cliOptions.addOption("u", "username", true, "");
		cliOptions.addOption("p", "password", true, "");
		cliOptions.addOption("h", "hostname", true, "");


		CommandLine commandLine = cliParser.parse(cliOptions, args);

		// Parsing of command line args

		String hostName = commandLine.getOptionValue("h", "localhost");
		String dbName = commandLine.getOptionValue("d", "");
		String userName = commandLine.getOptionValue("u", "");
		String passWord = commandLine.getOptionValue("p", "");

		PGSimpleDataSource dataSource = new PGSimpleDataSource();

		dataSource.setDatabaseName(dbName);
		dataSource.setServerName(hostName);
		dataSource.setUser(userName);
		dataSource.setPassword(passWord);


		Connection conn = dataSource.getConnection();

		conn.setAutoCommit(false);
		
		OutputStream out = System.out;

		
		Sink<Triple> outputSink = new SinkTripleOutput(out);
		Sink<Triple> errorSink = new SinkTripleOutput(System.err);
		
		Sink<Triple> sink = new ValidatingSink(outputSink, errorSink);
		
		Map<String, PostProcessor> postProcessorMap = new HashMap<String, PostProcessor>();
		postProcessorMap.put("ucamelize&urlencode", new UCamelizeAndUrlEncodePostProcessor());
		postProcessorMap.put("mediawikiTitle", new MediaWikiTitlePostProcessor());
		
		LgdDumper dumper = new LgdDumper();

		//dumper.dumpWayGeometriesNeoGeo(conn, sink);
		//dumper.dumpResourceTags(conn, "lgd_tags_resource_kv", "way", sink);
		//dumper.dumpTagsDatatype(conn, "boolean", null, sink);
		
		//dumper.dumpResourceTagsPrefixed(conn, "lgd_tags_resource_prefix", null, postProcessorMap, sink);
		//dumper.dumpResourceTags(conn, "lgd_tags_property", null, sink);
		//dumper.dumpResourceTags(conn, "lgd_tags_property", null, sink);

		
		
		//if(true) { System.exit(0); }
		/*
		dumper.dumpResourceTagsPrefixed(conn, "lgd_tags_resource_prefix", null, postProcessorMap, sink);
		dumper.dumpResourceTags(conn, "lgd_tags_property", null, sink);

		dumper.dumpText(conn, null, sink);
		dumper.dumpStrings(conn, null, sink);

		dumper.dumpNodes(conn, sink);
		dumper.dumpWays(conn, sink);
		
		dumper.dumpNodeGeometriesNeoGeo(conn, sink);
		dumper.dumpWayGeometriesNeoGeo(conn, sink);
		*/


		dumper.dumpTagsDatatype(conn, "boolean", null, sink);
		dumper.dumpTagsDatatype(conn, "int", null, sink);
		dumper.dumpTagsDatatype(conn, "float", null, sink);

		dumper.dumpResourceTags(conn, "lgd_tags_resource_k", null, sink);
		dumper.dumpResourceTags(conn, "lgd_tags_resource_kv", null, sink);

		dumper.dumpResourceTagsPrefixed(conn, "lgd_tags_resource_prefix", null, postProcessorMap, sink);

		
		/*
		dumper.dumpWayNodesOriginal(conn, sink);

		dumper.dumpWays(conn, sink);
		dumper.dumpWayLineStrings(conn, sink);
		dumper.dumpWayPolygons(conn, sink);
		*/


		conn.close();
	}

	private LgdVocab vocab = new LgdVocabDefault();
	private Calendar cal = new GregorianCalendar();

	private TypeMapper tm = TypeMapper.getInstance();
	private RDFDatatype virtRdf = tm
			.getSafeTypeByName("http://www.openlinksw.com/schemas/virtrdf#Geometry");

	//private Sink<Triple> sink;
	
	
	private static UrlValidator urlValidator = new UrlValidator();
	
	public static boolean isAsciiLetter(int c) {
		return c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z';		
	}
	
	public static boolean isAsciiDigit(int c) {
		return c >= '0' && c <= '9';
	}
		
	public static boolean isUriCharacter(int c) {
		return isAsciiLetter(c) || isAsciiDigit(c) || c == '.' || c == '-' || c == '_' || c == '*';
	}
	
	public static String fixUri(String str) {
		str = str.trim();
		
		if(str.startsWith("mailto:")) {
			str = str.replaceAll("\\sA|aT|t\\s", "@");
			str = str.replaceAll("\\sD|dO|oT|t\\s", ".");
			str = str.replaceAll("\\s+", "");
			
			// TODO NOT SURE ABOUT LEGAL ISSUES - THEREFORE I DO NOT ADD EMAIL ADDRESSES FOR NOW
			return null;
			//return str;
		} else if(!str.contains("://")) {
			str = "http://" + str;			
		}

		str = str.replaceAll("\\s+", "");


		str = fixUriLettersIfRequired(str);

		
		return str;
		/*
		boolean isValid = urlValidator.isValid(str);

		return isValid ? str : null;
		*/
	}

	
	public static boolean isFixUriLettersRequired(String uri) {
		for(int i = 0; i < uri.length(); ++i) {
			int codePoint = uri.codePointAt(i);
			
			if(Character.isLetter(codePoint) && !isAsciiLetter(codePoint)) {
				return true;
			}
		}
		
		return false;
	}
	
	public static String fixUriLettersIfRequired(String uri) {
		return isFixUriLettersRequired(uri)
			? fixUriLetters(uri)
			: uri;
	}
	
	public static String fixUriLetters(String uri) {
		// encode some chars
		StringBuilder builder = new StringBuilder();
		for(int i = 0; i < uri.length(); ++i) {
			int codePoint = uri.codePointAt(i);
			char[] chars = Character.toChars(codePoint);
			String c;
			if(Character.isLetter(codePoint) && !isAsciiLetter(codePoint)) {
				
				c = new String(chars);
				c = StringUtils.urlEncode(c);
				builder.append(c);
			} else {
				builder.append(chars);
			}
		}
		String result = builder.toString();
		return result;		
	}
	
	public static Node createFixedNodeUri(String str) {
		str = fixUri(str);
		return str == null ? null : Node.createURI(str);
	}
	
	public Triple createTriple(Node s, Node p, Node o) {
		return (o == null || p == null || s == null)
				? null
				: new Triple(s, p, o);
	}
	
	public void sendTriple(Triple triple, Sink<Triple> sink) {
		if(triple != null) {
			sink.send(triple);
		}
	}
	
	public LgdDumper() {
		
	}
	

	public Statement createStatement(Connection conn)
		throws SQLException
	{
		Statement stmt = conn.createStatement();		
		stmt.setFetchSize(50000);
		
		return stmt;
	}

	
	public void dumpText(Connection conn, String osmEntityType, Sink<Triple> sink)
		throws Exception
	{		
		Statement stmt = createStatement(conn);
		ResultSet rs = stmt.executeQuery(
					"SELECT osm_entity_type, osm_entity_id, property, v, language FROM lgd_tags_text " + whereClause(osmEntityType));
		
		while (rs.next()) {
			Node subject = getResource(rs.getString("osm_entity_type"), rs.getLong("osm_entity_id"));
			Node predicate = Node.createURI(rs.getString("property"));
			String v = rs.getString("v");
			String lang = rs.getString("language");

			Node literal = (lang == null || lang.isEmpty())
				? Node.createLiteral(v)
				: Node.createLiteral(v, lang, false);

			sink.send(new Triple(subject, predicate, literal));
		}		
	}

	public void dumpStrings(Connection conn, String osmEntityType, Sink<Triple> sink)
			throws Exception
		{		
			Statement stmt = createStatement(conn);
			ResultSet rs = stmt.executeQuery(
						"SELECT osm_entity_type, osm_entity_id, k, v FROM lgd_tags_string " + whereClause(osmEntityType));
			
			while (rs.next()) {
				Node subject = getResource(rs.getString("osm_entity_type"), rs.getLong("osm_entity_id"));
				Node predicate = encodeK(rs.getString("k"));
				Node value = Node.createLiteral(rs.getString("v"));

				sink.send(new Triple(subject, predicate, value));
			}		
		}
	
	public void dumpResourceTags(Connection conn, String tableName, String osmEntityType, Sink<Triple> sink)
		throws Exception
	{		
		Statement stmt = createStatement(conn);
		ResultSet rs = stmt.executeQuery(
					"SELECT osm_entity_type, osm_entity_id, property, object FROM " + tableName + whereClause(osmEntityType));
		
		while (rs.next()) {
			Node subject = getResource(rs.getString("osm_entity_type"), rs.getLong("osm_entity_id"));
			Node predicate = Node.createURI(rs.getString("property"));
			Node object = createFixedNodeUri(rs.getString("object"));

			if(object != null) {
				sink.send(new Triple(subject, predicate, object));
			}
		}
	}

	public void dumpResourceTagsPrefixed(Connection conn, String tableName, String osmEntityType, Map<String, PostProcessor> postProcessorMap, Sink<Triple> sink)
			throws Exception
	{		
		Statement stmt = createStatement(conn);

		ResultSet rs = stmt.executeQuery(
							"SELECT osm_entity_type, osm_entity_id, property, object_prefix, v, post_processing FROM " + tableName + whereClause(osmEntityType));
			
			while (rs.next()) {
				Node subject = getResource(rs.getString("osm_entity_type"), rs.getLong("osm_entity_id"));
				Node predicate = Node.createURI(rs.getString("property"));
				String objectPrefix = rs.getString("object_prefix");
				String postProcessing = rs.getString("post_processing");
				String v = rs.getString("v");

				PostProcessor postProcessor = postProcessorMap.get(postProcessing);
				if(postProcessor == null) {
					postProcessor = DefaultPostProcessor.getInstance();
				}
				
				Node object = postProcessor.process(objectPrefix, v);

				if(object != null) {
					sink.send(new Triple(subject, predicate, object));
				} else {
					//System.out.println(objectPrefix + " --- " + v);
				}
				
			}
		}
	
	/*
	public void dumpUriLiterals(Connection conn, String osmEntityType, Sink<Triple> sink)
			throws Exception
		{		
			ResultSet rs = conn
					.createStatement()
					.executeQuery(
							"SELECT osm_entity_type, osm_entity_id, property, object FROM lgd_tags_property " + whereClause(osmEntityType));
			
			while (rs.next()) {
				Node subject = getResource(rs.getString("way_id"), rs.getLong("osm_entity_id"));
				Node predicate = Node.createURI(rs.getString("property"));
				Node object = Node.createURI(rs.getString("v"));

				sink.send(new Triple(subject, predicate, object));
			}
		}
		*/


	
	
	

	public Node encodeK(String k) {
		String[] parts = k.split(":");

		int last = parts.length - 1;

		for(int i = 0; i < last; ++i) {
			parts[i] = StringUtils.urlEncode(StringUtils.toCamelCase(parts[i], false));
		}
		
		return Node.createURI("http://linkedgeodata.org/property/" + Joiner.on('/').join(parts));
	}
	
	
	public void dumpTagsDatatype(Connection conn, String suffix, String osmEntityType, Sink<Triple> sink)
		throws Exception
	{	
		Statement stmt = createStatement(conn);

		ResultSet rs = stmt
				.executeQuery(
						"SELECT osm_entity_type, osm_entity_id, b.property, k, v FROM lgd_tags_" + suffix + " a LEFT JOIN lgd_map_property b USING (k) " + whereClause(osmEntityType));
		
		while (rs.next()) {
			Node subject = getResource(rs.getString("osm_entity_type"), rs.getLong("osm_entity_id"));
			
			String p = rs.getString("property");
			if(p == null) {
			
				// Auto generate properties for now
				p = rs.getString("k");
				String[] parts = p.split(":");
	
				int last = parts.length - 1;
	
				for(int i = 0; i < last; ++i) {
					parts[i] = StringUtils.toCamelCase(parts[i], false);
				}
				
				parts[last] = "boolean".equals(suffix)
						? "is" + StringUtils.toCamelCase(parts[last], true)
						: StringUtils.toCamelCase(p, false);
	
						
				p = "http://linkedgeodata.org/ontology/" + Joiner.on('/').join(parts);
			}
			
			
			Node predicate = Node.createURI(p);
			Node value = ResourceFactory.createTypedLiteral(rs.getObject("v")).asNode();
			
			sink.send(new Triple(subject, predicate, value));
		}
		
	}
	
	public String whereClause(String osmEntityTypeFilter) {
		return osmEntityTypeFilter == null
				? ""
				: " WHERE osm_entity_type = '" + osmEntityTypeFilter + "'";
	}
	
	public Node getResource(String osmEntityType, long id) {
		if("node".equals(osmEntityType)) {
			return vocab.createNode(id);
		} else if("way".equals(osmEntityType)) {
			return vocab.createWay(id);
		} else if("relation".equals(osmEntityType)) {
			return vocab.createRelation(id);
		} else {
			throw new RuntimeException("Unknown entity type: " + osmEntityType);
		}
	}
	
	
	public void dumpNodeGeometriesNeoGeo(Connection conn, Sink<Triple> sink)
			throws Exception
	{
		Statement stmt = createStatement(conn);

		ResultSet rs = stmt
				.executeQuery(
						"SELECT id, ST_X(geom) x, ST_Y(geom) y FROM nodes");
		
		while (rs.next()) {
			writePointNeoGeo(
					rs.getLong("id"),
					rs.getDouble("x"),
					rs.getDouble("y"),
					sink);						
		}		
	}
	
	
	public void dumpWayNodesOriginal(Connection conn, Sink<Triple> sink)
			throws Exception
	{
		Statement stmt = createStatement(conn);

		ResultSet rs = stmt
				.executeQuery(
						"SELECT way_id, node_id FROM way_nodes ORDER BY way_id, sequence_id");

		Long currentWayId = null;
		List<Long> currentNodeIds = new ArrayList<Long>();
		
		while (rs.next()) {
			Long wayId = rs.getLong("way_id");
			if(!wayId.equals(currentWayId)) {
				if(currentWayId == null) {
					currentWayId = wayId;					
				} else {
					writeWayNodeOriginal(currentWayId, currentNodeIds, sink);
					
					currentNodeIds.clear();
					currentWayId = wayId;
				}
			}
			
			currentNodeIds.add(rs.getLong("node_id"));
		}
		writeWayNodeOriginal(currentWayId, currentNodeIds, sink);		
	}
	

	/**
	 * way-id lgdo:hasNodes waynode-id
	 * waynode-id a rdf:Seq
	 * 
	 * @param wayId
	 * @param nodeIds
	 * @param sink
	 */
	public void writeWayNodeOriginal(Long wayId, List<Long> nodeIds, Sink<Triple> sink) {
		
		Node way = vocab.createWay(wayId);	
		Node wayNode = vocab.createWayNode(wayId);
		
		sink.send(new Triple(way, vocab.hasNodes(), wayNode));
		sink.send(new Triple(wayNode, RDF.type.asNode(), RDF.Seq.asNode()));
		

		int i = 0;
		for(Long nodeId : nodeIds) {
			++i;
			sink.send(new Triple(wayNode, RDF.li(i).asNode(), vocab.createNode(nodeId)));
		}
	}
	
	
	
	
	public void dumpWayGeometriesNeoGeo(Connection conn, Sink<Triple> sink)
			throws Exception
	{
		Statement stmt = createStatement(conn);

		ResultSet rs = stmt
				.executeQuery(
						"SELECT way_id, node_id FROM way_nodes ORDER BY way_id, sequence_id");

		Long currentWayId = null;
		List<Long> currentNodeIds = new ArrayList<Long>();
		
		while (rs.next()) {
			Long wayId = rs.getLong("way_id");
			if(!wayId.equals(currentWayId)) {
				if(currentWayId == null) {
					currentWayId = wayId;					
				} else {
					writeNeoGeo(currentWayId, currentNodeIds, sink);
					
					currentNodeIds.clear();
					currentWayId = wayId;
				}
			}
			
			currentNodeIds.add(rs.getLong("node_id"));
		}

		writeNeoGeo(currentWayId, currentNodeIds, sink);
	}
	
	public void writePointNeoGeo(long nodeId, Double lon, Double lat, Sink<Triple> sink) {
		Node node = vocab.createNode(nodeId);

		Node geo = vocab.createNodeGeometry(nodeId);
		
		sink.send(new Triple(node, GeoVocab.geometry, geo));
		sink.send(new Triple(geo, RDF.type.asNode(), WGS84Pos.Point.asNode()));

		sink.send(new Triple(geo, WGS84Pos.xlong.asNode() , NodeValue.makeDouble(lon).asNode()));
		sink.send(new Triple(geo, WGS84Pos.xlat.asNode(), NodeValue.makeDouble(lat).asNode()));
		
	}
	
	public void writeNeoGeo(Long wayId, List<Long> nodeIds, Sink<Triple> sink) {
		
		Node way = vocab.createWay(wayId);
		
		Node geo = vocab.createWayGeometry(wayId);
		
		
		sink.send(new Triple(way, GeoVocab.geometry, geo));
		//sink.send(new Triple(geo, RDF.type.asNode(), GeoVocab.LineString));

		Node first = nodeIds.isEmpty()
				? RDF.nil.asNode()
				//: Node.createURI(vocab.createWayGeometry(nodeIds.get(0)).toString() + "-0");
				: Node.createURI(geo.toString() + "-0");
		
		sink.send(new Triple(geo, GeoVocab.posList, first));
	
		for(int i = 0; i < nodeIds.size(); ++i) {
			sink.send(new Triple(first, RDF.type.asNode(), RDF.List.asNode()));
			sink.send(new Triple(first, RDF.first.asNode(), vocab.createNode(nodeIds.get(i))));
			
			
			Node rest = (i + 1 != nodeIds.size())
					//? Node.createURI(vocab.createNodeGeometry(nodeIds.get(0)).toString() + "-" + (i + 1))
					? Node.createURI(geo + "-" + (i + 1))
					: RDF.nil.asNode();
						
			sink.send(new Triple(first, RDF.rest.asNode(), rest));
			
			first = rest;
		}		
	}
	
	
	
	public void dumpNodes(Connection conn, Sink<Triple> sink) throws Exception {
		Statement stmt = createStatement(conn);		
		
		ResultSet rs = stmt
				.executeQuery(
						"SELECT id, version, user_id, tstamp, changeset_id, ST_AsText(geom) geom FROM nodes");

		while (rs.next()) {
			long id = rs.getLong("id");

			Node subject = vocab.createNode(id);
			Node wkt = Node.createLiteral(rs.getString("geom"), null, virtRdf);
			
			sink.send(new Triple(subject, vocab.geometryLiteral(), wkt));
			writeMetadata(subject, rs, sink);			
		}		
	}
	
	
	public void writeMetadata(Node subject, ResultSet rs, Sink<Triple> sink)
			throws SQLException
	{
		Node version = NodeValue.makeInteger(rs.getInt("version")).asNode();
		Node user = vocab.createContributor(rs.getInt("user_id")); //NodeValue.makeInteger(rs.getInt("user_id")).asNode();
		Date date = rs.getDate("tstamp");
		cal.setTime(date);
		Node tstamp = NodeValue.makeDateTime(cal).asNode();
		Node changeset = vocab.createChangeset(rs.getInt("changeset_id"));
		
		
		sink.send(new Triple(subject, vocab.version(), version));
		sink.send(new Triple(subject, vocab.user(), user));
		sink.send(new Triple(subject, vocab.tstamp(), tstamp));
		sink.send(new Triple(subject, vocab.changeSet(), changeset));		
	}

	
	public void dumpWays(Connection conn, Sink<Triple> sink) throws Exception {
		Statement stmt = createStatement(conn);

		ResultSet rs = stmt
				.executeQuery(
						"SELECT id, version, user_id, tstamp, changeset_id FROM ways a");

		while (rs.next()) {
			long id = rs.getLong("id");

			Node subject = vocab.createWay(id);
			
			writeMetadata(subject, rs, sink);
		}		
	}
	
	public void dumpWayLineStrings(Connection conn, Sink<Triple> sink) throws Exception {
		Statement stmt = createStatement(conn);

		ResultSet rs = stmt
				.executeQuery(
						"SELECT id, ST_AsText(linestring) AS wkt FROM ways a WHERE NOT EXISTS (SELECT way_id from simple_polys b WHERE b.way_id = a.id AND b.polygon IS NOT NULL)");

		while (rs.next()) {
			long id = rs.getLong("id");

			Node subject = vocab.createWay(id);
			Node wkt = Node.createLiteral(rs.getString("wkt"), null, virtRdf);
			
			sink.send(new Triple(subject, vocab.geometryLiteral(), wkt));
		}		
	}

	public void dumpWayPolygons(Connection conn, Sink<Triple> sink) throws Exception {
		Statement stmt = createStatement(conn);

		ResultSet rs = stmt
				.executeQuery(
						"SELECT id, ST_AsText(polygon) AS wkt FROM ways a JOIN simple_polys b ON (b.way_id = a.id) WHERE b.polygon IS NOT NULL");

		while (rs.next()) {
			long id = rs.getLong("id");

			Node subject = vocab.createWay(id);
			Node wkt = Node.createLiteral(rs.getString("wkt"), null, virtRdf);
			
			sink.send(new Triple(subject, vocab.geometryLiteral(), wkt));
		}		
	}

	
	
	
	
	
	
	
}

class GeoVocab {
	public static final String ns = "http://geovocab.org/geometry#";
	public static final Node geometry = Node.createURI(ns + "geometry");
	public static final Node posList = Node.createURI(ns + "posList");
	public static final Node LineString = Node.createURI(ns + "LineString");

}

interface LgdVocab {

	Node createNode(long id);
	Node createRelation(long id);
	Node createWay(long id);
	Node createWayNode(long id);
	Node createContributor(long id);
	Node createChangeset(long id);

	Node createNodeGeometry(long id);
	Node createWayGeometry(long id);
	
	// Predicates
	Node version();
	Node changeSet();
	Node user();
	Node tstamp();
	Node geometryLiteral();
	
	Node hasNodes();
}

class LgdVocabDefault implements LgdVocab {
	private static final String ns = "http://linkedgeodata.org/";
	private static final String resourceNs = ns + "triplify/";
	private static final String ontologyNs = ns + "ontology/";

	private static final String nodeNs = resourceNs + "node";
	private static final String wayNs = resourceNs + "way";
	private static final String wayNodeNs = resourceNs + "waynode";
	private static final String relationNs = resourceNs + "relation";
	private static final String contributorNs = resourceNs + "contributor";
	private static final String changesetNs = resourceNs + "changeset";

	private static final String geometryNodeNs = ns + "geometry/node";
	private static final String geometryWayNs = ns + "geometry/way";

	
	//private static final String geometryLiteralNs = "http://www.w3.org/2003/01/geo/wgs84_pos#";
	private static final Node geometryLiteral = WGS84Pos.geometry.asNode();
	
	private static final Node version = Node.createURI(ontologyNs + "version");
	private static final Node user = Node.createURI(ontologyNs + "contributor");
	private static final Node tstamp = Node.createURI(ontologyNs + "modificationDate");
	private static final Node changeset = Node.createURI(ontologyNs + "changeset");

	private static final Node hasNodes = Node.createURI(ontologyNs + "hasNodes");

	public Node hasNodes()
	{
		return hasNodes;
	}
	
	public Node createNode(long id) {
		return Node.createURI(nodeNs + id);
	}

	public Node createWay(long id) {
		return Node.createURI(wayNs + id);
	}
	
	public Node createWayNode(long id) {
		return Node.createURI(wayNodeNs + id);
	}

	public Node createRelation(long id) {
		return Node.createURI(relationNs + id);
	}

	public Node createContributor(long id) {
		return Node.createURI(contributorNs + id);
	}

	public Node createChangeset(long id) {
		return Node.createURI(changesetNs + id);
	}
	
	public Node version() {
		return version;
	}

	public Node changeSet() {
		return changeset;
	}

	public Node user() {
		return user;
	}

	public Node tstamp() {
		return tstamp;
	}

	public Node geometryLiteral() {
		return geometryLiteral;
	}

	public Node createNodeGeometry(long id) {
		return Node.createURI(geometryNodeNs + id);
	}

	public Node createWayGeometry(long id) {
		return Node.createURI(geometryWayNs + id);
	}
}


class WGS84Pos
{
	protected static final String uri ="http://www.w3.org/2003/01/geo/wgs84_pos#";

    public static String getURI()
    {
    	return uri;
    }

    protected static final Resource resource(String local)
    {
    	return ResourceFactory.createResource(uri + local);
    }

    protected static final Property property(String local)
    {
    	return ResourceFactory.createProperty(uri, local);
    }

    /*
    public static Property li( int i )
	        { return property( "_" + i ); }
     */
   	public static final Property xlat = property("lat");
	public static final Property xlong = property("long");
	
	public static final Property geometry = property("geometry");
	public static final Property Point = property("Point");

}

class MediawikiUtils
{
	public static MediawikiTitle parseTitle(String name, Set<String> namespaces)
	{
	       String[] parts = name.split(":", 2);
	       String namespaceName = "";
	       String articleName = null;
	       
	       // Note: Just because there are 2 parts, it doesn't mean that we have
	       // namespace. e.g. Mission:Impossible - 'Mission' is not a namespace.
	       if(parts.length == 2) {
	           namespaceName = canonicalWikiTrim(parts[0]);
	           namespaceName = StringUtils.ucFirst(namespaceName.toLowerCase());

	           if(namespaces.contains(namespaceName))
	               articleName = StringUtils.ucFirst(canonicalWikiTrim(parts[1]));
	       }
	       
	       // if there is no articleName yet, the whole name is the articleName
	       if(articleName == null) {
	    	   namespaceName = "";
	    	   articleName = StringUtils.ucFirst(canonicalWikiTrim(name));
	       }
	       
	       return new MediawikiTitle(namespaceName, articleName);
	}
	
   /**
    *
    * Converts string to canonical wiki representation
    * Namespace is only recognized if there is an entry in namespaces
    * Namespace part and name part will be trimmed
    * Remaining whitespaces will be replaced by underscores
    * TODO Multiple consequtive underscores will be replaced by a single underscore
    * The whole namespace name will be turned lowercase except for the first letter
    * The first letter of the name will be made uppercase
    *
    * Example
    *    mYnameSPACE  :     wHat     EVER
    * will currently become:
    * MYnameSPACE:WHat_____EVER
    * should become
    * MYnameSPACE:WHat_EVER
    *
    *
    * @param <type> $str The source string
    * @param <type> $namespaces An array containing the names of namespaces
    * @return <type> A canonical representation of the wiki name
    *
    */
   public static String toCanonicalWikiCase(String name, Set<String> namespaces)
   {
       return parseTitle(name, namespaces).toString();
   }

   /**
    * Removes heading and trailing whitespaces
    * Replaces remaining white spaces with underscore
    * Replaces consecutive underscores with a single underscore
    *
    * @param <type> $name
    * @return <type>
    */
   public static String canonicalWikiTrim(String name)
   {
   	String result = name.trim();
   	result = result.replace(' ', '_');
   	result = result.replaceAll("_+", "_");
       
       return result;
   }

}


class MediawikiTitle
{
	private String namespaceName;
	private String articleName;
	
	public MediawikiTitle(String namespaceName, String articleName)
	{
		this.namespaceName = namespaceName;
		this.articleName = articleName;
	}
	
	public String getNamespaceName()
	{
		return namespaceName;
	}
	public String getArticleName()
	{
		return articleName;
	}
	
	public String toString()
	{
		if(namespaceName.isEmpty())
			return articleName;
		else
			return namespaceName + ":" + articleName;
	}
}


