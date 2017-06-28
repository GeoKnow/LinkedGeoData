package org.aksw.linkedgeodata.osm.replication.dao;

import java.util.Calendar;

import org.apache.jena.datatypes.xsd.XSDDateTime;
import org.apache.jena.enhanced.EnhGraph;
import org.apache.jena.graph.Node;
import org.apache.jena.rdf.model.impl.ResourceImpl;
import org.apache.jena.vocabulary.DCTerms;

public class StateImpl
    extends ResourceImpl
    implements State
{
    public StateImpl(Node node, EnhGraph graph) {
        super(node, graph);
    }

    @Override
    public Calendar getTimestamp() {
        Object tmp = this.getRequiredProperty(DCTerms.created).getObject().asLiteral().getValue();
        Calendar result = ((XSDDateTime)tmp).asCalendar();
        return result;
    }

    @Override
    public long getSeqId() {
        long result = this.getRequiredProperty(DCTerms.identifier).getLong();
        return result;
    }
}
