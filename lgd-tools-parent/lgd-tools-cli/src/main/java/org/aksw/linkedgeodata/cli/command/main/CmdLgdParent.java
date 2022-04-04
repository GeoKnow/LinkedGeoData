package org.aksw.linkedgeodata.cli.command.main;

import org.aksw.commons.picocli.CmdCommonBase;

import picocli.CommandLine.Command;

@Command(name="lgd", versionProvider = VersionProviderLinkedGeoData.class, description = "LinkedGeoData commands", subcommands = {
        CmdLgdOsmParent.class
})
public class CmdLgdParent
	extends CmdCommonBase
{
}
