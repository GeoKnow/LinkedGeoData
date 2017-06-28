package org.aksw.linkedgeodata.osm.replication.dao;

import java.net.URI;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

import com.google.common.collect.Range;

public class OsmRepoDaoImpl
    implements OsmRepoDao
{
    protected OsmRepoCoreDao coreDao;
    protected long avgUpdateIntervalInSec;


    public OsmRepoDaoImpl(OsmRepoCoreDao repoAccessor, long avgUpdateIntervalInSec) {
        super();
        this.coreDao = repoAccessor;
        this.avgUpdateIntervalInSec = avgUpdateIntervalInSec;
    }

    @Override
    public URI getBaseUri() {
        URI result = coreDao.getBaseUri();
        return result;
    }


    public State getMostRecentState() throws Exception  {
        State result = coreDao.getMostRecentState();
        return result;
    }


    public State getState(long seqId) throws Exception {
        State result = coreDao.getState(seqId);
        return result;
    }

    @Override
    public State findState(Instant searchTimestamp) throws Exception {
        State currentState = this.getMostRecentState();

        Range<Long> range = Range.closedOpen(0l, currentState.getSeqId());
        State result = findStatePreceedingTimestamp(currentState, searchTimestamp, avgUpdateIntervalInSec, range);

        return result;
    }

    public State findStatePreceedingTimestamp(State currentState, Instant searchTimestamp, long avgUpdateIntervalInS, Range<Long> seqIdRange) throws Exception {
        State result = null;
        Range<Long> subRange;

        // If the range is empty, the result is null
        if(!seqIdRange.isEmpty()) {

            long upperSeqId = currentState.getSeqId();
            Instant currentTimestamp = currentState.getTimestamp().toInstant();

            //Instant lowerTimestamp = timestamp.toInstant();
            // Interpolate the sequence id of the lower state

            long delta = (long)(ChronoUnit.SECONDS.between(searchTimestamp, currentTimestamp) / (double)avgUpdateIntervalInS);
            // If the searchTimestamp is after the checkTimestamp, we need to go further back by one updateInterval
            if(delta == 0) {
                if(searchTimestamp.compareTo(currentTimestamp) < 0) {
                    ++delta;
                    subRange = Range.lessThan(upperSeqId).intersection(seqIdRange);
                } else {
                    // We found the result
                    subRange = Range.closedOpen(upperSeqId, upperSeqId).intersection(seqIdRange);
                    result = currentState;
                }
            } else if(delta > 0) {
                subRange = Range.lessThan(upperSeqId).intersection(seqIdRange);
                // Adjust the maximum range
            } else { // if(delta < 0) // Adjust the lower bound
                subRange = Range.greaterThan(upperSeqId).intersection(seqIdRange);
            }

            if(result == null) {
                long lowerSeqId = upperSeqId - delta;

                State checkState = this.getState(lowerSeqId);
                //Instant checkTimestamp = checkState.getTimestamp().toInstant();

                result = findStatePreceedingTimestamp(checkState, searchTimestamp, avgUpdateIntervalInS, subRange);
            }
        }
        return result;
    }

    public static double determineUpdateIntervalInSec(OsmRepoCoreDao repoCoreDao) throws Exception {
        int n = 2;
        List<Instant> instants = new ArrayList<>(n);
        State latest = repoCoreDao.getMostRecentState();
        instants.add(latest.getTimestamp().toInstant());
        for(int i = 1; i < n; ++i) {
            State state = repoCoreDao.getState(latest.getSeqId() - i);
            instants.add(state.getTimestamp().toInstant());
        }

        double result = IntStream.range(0, n - 1)
                .mapToLong(i -> ChronoUnit.SECONDS.between(instants.get(i + 1), instants.get(i)))
                .average()
                .getAsDouble();

        return result;
    }

    public static OsmRepoDao create(String repoBaseUriStr) throws Exception {
        URI repoBaseUri = new URI(repoBaseUriStr);

        OsmRepoCoreDao coreDao = new OsmRepoCoreDaoImpl(repoBaseUri);
        OsmRepoDao result = create(coreDao);
        return result;
    }

    public static OsmRepoDao create(OsmRepoCoreDao coreDao) throws Exception {
        long updateIntervalInSec = (long)determineUpdateIntervalInSec(coreDao);

        OsmRepoDao result = new OsmRepoDaoImpl(coreDao, updateIntervalInSec);
        return result;
    }
}
