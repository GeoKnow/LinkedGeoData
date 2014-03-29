package org.linkedgeodata.web.api;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

import org.aksw.jena_sparql_api.utils.ModelUtils;
import org.apache.commons.lang.StringEscapeUtils;

import com.hp.hpl.jena.rdf.model.Literal;
import com.hp.hpl.jena.rdf.model.Model;
import com.hp.hpl.jena.rdf.model.RDFErrorHandler;
import com.hp.hpl.jena.rdf.model.RDFNode;
import com.hp.hpl.jena.rdf.model.RDFWriter;
import com.hp.hpl.jena.rdf.model.Resource;
import com.hp.hpl.jena.rdf.model.Statement;
import com.hp.hpl.jena.rdf.model.StmtIterator;

public class RDFWriterHtml
	implements RDFWriter
{	
	String nodeToString(RDFNode node, NavigableMap<String, String> nsToPrefix, String attributes)
	{
		if(node.isURIResource()) {
			String uri = node.as(Resource.class).getURI();
			String prettyURI = ModelUtils.prettyUri(uri, nsToPrefix);
			
			return "<a href='" + uri + "' " + attributes + " target=\"_blank\">" + StringEscapeUtils.escapeHtml(prettyURI) + "</a>";
		}
		else if(node.isLiteral()) {
			Literal literal = node.as(Literal.class);
			String valuePart = literal.getValue().toString();
			String suffixPart;
			if(literal.getDatatype() != null) {
				suffixPart = "^^" + ModelUtils.prettyUri(literal.getDatatypeURI(), nsToPrefix);
			}
			else {
				suffixPart = literal.getLanguage().isEmpty()
					? ""
					: "@" + literal.getLanguage();
			}
			
			String result = StringEscapeUtils.escapeHtml(valuePart + suffixPart);
			
			return result;
			//return "<p>" + result + "</p>";
		}
		else if(node.isAnon()) {
			return StringEscapeUtils.escapeHtml(node.toString());
		}
		
		throw new RuntimeException("Should not happen");
	}
	
	@Override
	public void write(Model model, Writer out, String base)
	{
		try {
			_write(model, out, base);
		} catch(Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	//@Override
	public void _write(Model model, Writer out, String base)
		throws IOException
	{
		// Create the reverse map for mapping namespaces to prefixes
		Map<String, String> prefixToNs = model.getNsPrefixMap();
		NavigableMap<String, String> nsToPrefix = new TreeMap<String, String>();
		for(Map.Entry<String, String> item : prefixToNs.entrySet())
			nsToPrefix.put(item.getValue(), item.getKey());
	
		
		// Sort the for output
		Comparator<RDFNode> comp = new RDFNodePrettyComparator();		
		
		StmtIterator itStmt = model.listStatements();
		Map<RDFNode, Map<RDFNode, Set<RDFNode>>> spo = new TreeMap<RDFNode, Map<RDFNode, Set<RDFNode>>>(comp);
		while(itStmt.hasNext()) {
			Statement stmt = itStmt.next();
			
			
			Map<RDFNode, Set<RDFNode>> po = spo.get(stmt.getSubject());
			if(po == null) {
				po = new TreeMap<RDFNode, Set<RDFNode>>(comp);
				spo.put(stmt.getSubject(), po);
			}
			
			Set<RDFNode> p = po.get(stmt.getPredicate());
			if(p == null) {
				p = new TreeSet<RDFNode>(comp);
				po.put(stmt.getPredicate(), p);
			}
			
			p.add(stmt.getObject());
		}
		itStmt.close();
	
		boolean isOdd = true;
	
		out.write("<table class='properties'>\n");
		
		// Output HTML
		for(Map.Entry<RDFNode, Map<RDFNode, Set<RDFNode>>> s2po : spo.entrySet()) {
			RDFNode subject = s2po.getKey();
			
	
			out.write("<tr><td colspan='2'>" + nodeToString(subject, nsToPrefix, "class='heading'") + "</td></tr>\n");
	
			for(Map.Entry<RDFNode, Set<RDFNode>> p2o : s2po.getValue().entrySet()) {
				RDFNode predicate = p2o.getKey();
				
				String predField = nodeToString(predicate, nsToPrefix, "class='content'");
				
				for(RDFNode o : p2o.getValue()) {
					
					String cssClass = isOdd ? "odd" : "even";
					isOdd = !isOdd;
					
					out.write("<tr class = '" + cssClass + "'><td style='padding-right:5em;'> " + predField + "</td><td style='width:100%;'>" + nodeToString(o, nsToPrefix, "class='content'") + "</td></tr>\n");				
					
					predField = "";
				}
				
				
			}
			//out.write("<hr />\n");
			//out.write("<br />\n");
			out.write("<tr class='even'><td colspan='2'>&nbsp;</td></tr>\n"); 				
		}
	
		out.write("</table>\n");
	
		out.flush();
	}
	
	@Override
	public void write(Model model, OutputStream out, String base)
	{		
		write(model, new PrintWriter(out), base);
	}
	
	@Override
	public Object setProperty(String propName, Object propValue)
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public RDFErrorHandler setErrorHandler(RDFErrorHandler errHandler)
	{
		// TODO Auto-generated method stub
		return null;
	}	
}