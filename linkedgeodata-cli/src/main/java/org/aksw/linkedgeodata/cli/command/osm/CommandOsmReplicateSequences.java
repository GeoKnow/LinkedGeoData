package org.aksw.linkedgeodata.cli.command.osm;

import java.time.Instant;
import java.util.Properties;

import org.aksw.linkedgeodata.osm.replication.dao.OsmRepoDao;
import org.aksw.linkedgeodata.osm.replication.dao.OsmRepoDaoImpl;
import org.aksw.linkedgeodata.osm.replication.dao.State;
import org.aksw.linkedgeodata.osm.replication.dao.StateImpl;

import com.beust.jcommander.JCommander;
import com.beust.jcommander.Parameter;

public class CommandOsmReplicateSequences {

    @Parameter(names = {"-u", "-url"}, description = "OSM Repository base URL")
    public String osmReplicationRepoBaseUrl = null;

    @Parameter(names = {"-d", "-date"}, description = "Timestamp")
    public String timestamp = null;

    public static void main(String[] args) throws Exception {

        CommandOsmReplicateSequences options = new CommandOsmReplicateSequences();
        JCommander jCommander = new JCommander(options);
        jCommander.parse(args);

        OsmRepoDao repoDao = OsmRepoDaoImpl.create(options.osmReplicationRepoBaseUrl);

        Instant instant = Instant.parse(options.timestamp);


        State state = repoDao.findState(instant);

        java.util.Properties properties = StateImpl.toProperties(new Properties(), state);
        properties.store(System.out, null);


//        if(commandLineArgs.isHelp())
//        {
//            jCommander.usage();
//            System.exit(0);
//        }
//
//
    }
}