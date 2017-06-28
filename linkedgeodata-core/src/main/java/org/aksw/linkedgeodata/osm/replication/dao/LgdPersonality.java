package org.aksw.linkedgeodata.osm.replication.dao;

import org.apache.jena.enhanced.BuiltinPersonalities;
import org.apache.jena.rdf.model.Resource;
import org.apache.jena.rdf.model.ResourceFactory;
import org.topbraid.spin.util.SimpleImplementation;

public class LgdPersonality {
    public static final Resource State = ResourceFactory.createResource("http://example.org/osm/State");

    public static void init() {

        BuiltinPersonalities.model
            .add(State.class, new SimpleImplementation(State.asNode(), StateImpl.class));
    }


}
