package org.aksw.linkedgeodata.osm.replication.dao;

import java.net.URI;

public interface OsmRepoCoreDao {
    URI getBaseUri();

    State getMostRecentState() throws Exception;
    State getState(long seqId) throws Exception;
}
