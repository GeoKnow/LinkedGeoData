package org.linkedgeodata.web.api;

import java.util.Comparator;

import com.hp.hpl.jena.rdf.model.Literal;
import com.hp.hpl.jena.rdf.model.RDFNode;

public class RDFNodePrettyComparator
	implements Comparator<RDFNode>
{
	private StringPrettyComparator stringComparator = new StringPrettyComparator();
	
	int getTypeSortValue(RDFNode node)
	{
		if(node.isURIResource())
			return 0;
		else if(node.isLiteral())
			return 1;
		else if(node.isAnon())
			return 2;
		else
			throw new RuntimeException("Shouldn't happen");
	}
	
	public int compareLiteral(Literal a, Literal b)
	{
		int tA = (a.getDatatype() == null) ? -1 : 0;
		int tB = (b.getDatatype() == null) ? 1 : 0;

		int d = tB + tA;
		if(d != 0)
			return d;
		
		if(a.getDatatype() != null) {
			d = stringComparator.compare(a.getDatatypeURI(), b.getDatatypeURI());
			if(d != 0)
				return d;
			
			return stringComparator.compare(a.getValue().toString(), b.getValue().toString());
		} else {
			d = a.getLanguage().compareTo(b.getLanguage());

			if(d != 0)
				return d;
			
			return stringComparator.compare(a.getValue().toString(), b.getValue().toString());
		}
	}
	
	@Override
	public int compare(RDFNode a, RDFNode b)
	{
		int tA = getTypeSortValue(a);
		int tB = getTypeSortValue(b);
		
		int d = tB - tA;
		if(d != 0)
			return d;
		
		if(a.isURIResource()) {
			return stringComparator.compare(a.asNode().getURI(), b.asNode().getURI());
		} else if(a.isLiteral()) {
			return compareLiteral(a.as(Literal.class), b.as(Literal.class));
		} else if(a.isAnon()) {
			return stringComparator.compare(a.asNode().getBlankNodeLabel(), b.asNode().getBlankNodeLabel());
		}
		
		throw new RuntimeException("Shouldn't happen");
	}

}
