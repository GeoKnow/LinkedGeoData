package org.aksw.linkedgeodata.cli.command.main;

import org.aksw.linkedgeodata.cli.command.osm.CmdLgdOsmReplicateSequences;

import picocli.CommandLine.Command;

@Command(name="osm", description = "LinkedGeoData/OpenStreetMap commands", subcommands = {
		CmdLgdOsmReplicateSequences.class
})
public class CmdLgdOsmParent {
}
