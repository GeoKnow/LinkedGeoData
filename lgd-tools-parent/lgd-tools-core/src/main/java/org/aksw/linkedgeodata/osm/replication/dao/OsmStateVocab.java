package org.aksw.linkedgeodata.osm.replication.dao;

import org.apache.jena.rdf.model.Property;
import org.apache.jena.vocabulary.DCTerms;

public class OsmStateVocab {
    public static final String ns = "http://linkedgeodata.org/state/";

    public static Property sequenceNumber = DCTerms.identifier;

}
