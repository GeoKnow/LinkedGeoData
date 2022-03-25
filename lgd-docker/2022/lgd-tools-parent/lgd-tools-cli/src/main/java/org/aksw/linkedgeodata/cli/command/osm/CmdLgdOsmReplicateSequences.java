package org.aksw.linkedgeodata.cli.command.osm;

import java.time.Instant;
import java.util.Properties;
import java.util.concurrent.Callable;

import org.aksw.commons.picocli.CmdCommonBase;
import org.aksw.linkedgeodata.osm.replication.dao.OsmRepoDao;
import org.aksw.linkedgeodata.osm.replication.dao.OsmRepoDaoImpl;
import org.aksw.linkedgeodata.osm.replication.dao.State;
import org.aksw.linkedgeodata.osm.replication.dao.StateImpl;

import picocli.CommandLine.Command;
import picocli.CommandLine.Option;


@Command(name = "sequences", description = "Retrieve the appropriate state.txt file for a given timestamp")
public class CmdLgdOsmReplicateSequences
	extends CmdCommonBase
	implements Callable<Integer>
{

    @Option(names = {"-u", "-url"}, description = "OSM Repository base URL")
    public String osmReplicationRepoBaseUrl = null;

    @Option(names = {"-t", "-timestamp"}, description = "Timestamp")
    public String timestamp = null;

    @Option(names = {"-d", "-duration"}, description = "Duration")
    public Boolean returnDuration = false;
    //public String cmd


    public Integer call() throws Exception {
        CmdLgdOsmReplicateSequences options = this;

        OsmRepoDao repoDao = OsmRepoDaoImpl.create(options.osmReplicationRepoBaseUrl);

        if(options.returnDuration) {
            System.out.println(repoDao.getUpdateInterval().getSeconds());
        } else { // By default, print the state file for the timestamp
            Instant instant = Instant.parse(options.timestamp);


            State state = repoDao.findState(instant);

            java.util.Properties properties = StateImpl.toProperties(new Properties(), state);
            properties.store(System.out, null);
        }

        return 0;
    }
}