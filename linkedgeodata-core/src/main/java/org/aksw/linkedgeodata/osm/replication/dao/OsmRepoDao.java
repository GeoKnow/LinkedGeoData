package org.aksw.linkedgeodata.osm.replication.dao;

import java.time.Instant;

/**
 * The repository model is as follows:
 * - There exist sequence ids
 * - There is a mapping of sequence ids to timestamps via URLs
 * - There is a a latest statefile
 *
 *
 * @author raven
 *
 */
public interface OsmRepoDao
    extends OsmRepoCoreDao
{

//    State getMostRecentState() throws Exception;
//    State getState(long seqId) throws Exception;

    State findState(Instant searchTimestamp) throws Exception;
}
