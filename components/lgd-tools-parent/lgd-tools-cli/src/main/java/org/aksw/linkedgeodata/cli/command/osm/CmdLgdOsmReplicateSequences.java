package org.aksw.linkedgeodata.cli.command.osm;

import java.time.Instant;
import java.util.Properties;
import java.util.concurrent.Callable;

import org.aksw.commons.picocli.CmdCommonBase;
import org.aksw.linkedgeodata.osm.replication.dao.OsmRepoDao;
import org.aksw.linkedgeodata.osm.replication.dao.OsmRepoDaoImpl;
import org.aksw.linkedgeodata.osm.replication.dao.State;
import org.aksw.linkedgeodata.osm.replication.dao.StateImpl;

import picocli.CommandLine.ArgGroup;
import picocli.CommandLine.Command;
import picocli.CommandLine.Option;


@Command(name = "replicate-sequences", description = "Retrieve the appropriate state.txt file for a given timestamp")
public class CmdLgdOsmReplicateSequences
	extends CmdCommonBase
	implements Callable<Integer>
{

    @Option(names = {"-u", "-url"}, required = true, description = "OSM Repository base URL, e.g. http://download.geofabrik.de/europe/monaco-updates/")
    public String osmReplicationRepoBaseUrl = null;


    @ArgGroup(exclusive = true, multiplicity = "1")
    Exclusive exclusive;

    static class Exclusive {
        @Option(names = {"-t", "-timestamp"}, required = true, description = "Timestamp e.g. 2022-02-22T22:22:22Z")
        public String timestamp = null;

        @Option(names = {"-d", "-duration"}, required = true, description = "Output the duration of the update interval")
        public Boolean returnDuration = false;
    }


    public Integer call() throws Exception {
        CmdLgdOsmReplicateSequences options = this;

        OsmRepoDao repoDao = OsmRepoDaoImpl.create(options.osmReplicationRepoBaseUrl);

        if(options.exclusive.returnDuration) {
            System.out.println(repoDao.getUpdateInterval().getSeconds());
        } else { // By default, print the state file for the timestamp
            Instant instant = Instant.parse(options.exclusive.timestamp);


            State state = repoDao.findState(instant);

            java.util.Properties properties = StateImpl.toProperties(new Properties(), state);
            properties.store(System.out, null);
        }

        return 0;
    }
}