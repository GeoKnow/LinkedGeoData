package org.aksw.linkedgeodata.cli.command.main;

import java.util.Arrays;
import java.util.Collection;
import java.util.Properties;

import org.aksw.commons.picocli.VersionProviderFromClasspathProperties;

public class VersionProviderLinkedGeoData
	extends VersionProviderFromClasspathProperties
{
	@Override public String getResourceName() { return "lgd.properties"; }
	@Override public Collection<String> getStrings(Properties p) { return Arrays.asList(
        p.get("lgd.version") + " built at " + p.get("lgd.build.timestamp")); }

}
