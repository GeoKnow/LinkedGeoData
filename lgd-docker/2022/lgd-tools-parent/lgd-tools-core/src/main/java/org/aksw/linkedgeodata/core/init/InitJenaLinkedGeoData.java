package org.aksw.linkedgeodata.core.init;

import org.aksw.linkedgeodata.osm.replication.dao.State;
import org.aksw.linkedgeodata.osm.replication.dao.StateImpl;
import org.apache.jena.enhanced.BuiltinPersonalities;
import org.apache.jena.rdf.model.Resource;
import org.apache.jena.rdf.model.ResourceFactory;
import org.apache.jena.system.JenaSubsystemLifecycle;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.topbraid.spin.util.SimpleImplementation;

public class InitJenaLinkedGeoData
    implements JenaSubsystemLifecycle
{
    private static final Logger logger = LoggerFactory.getLogger(InitJenaLinkedGeoData.class);

    public void start() {
        logger.debug("LinkedGeoData Jena initialization");
        init();
    }

    @Override
    public void stop() {
    }


    public static final Resource State = ResourceFactory.createResource("http://example.org/osm/State");

    public static void init() {

        BuiltinPersonalities.model
            .add(State.class, new SimpleImplementation(State.asNode(), StateImpl.class));
    }


}
