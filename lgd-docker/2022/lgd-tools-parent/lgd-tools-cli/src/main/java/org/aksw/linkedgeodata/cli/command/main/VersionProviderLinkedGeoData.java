package org.aksw.linkedgeodata.cli.command.main;

import java.util.Arrays;
import java.util.Collection;
import java.util.Properties;

import org.aksw.commons.picocli.VersionProviderFromClasspathProperties;

public class VersionProviderLinkedGeoData
	extends VersionProviderFromClasspathProperties
{
	@Override public String getResourceName() { return "linkedgeodata.properties"; }
	@Override public Collection<String> getStrings(Properties p) { return Arrays.asList(
        p.get("linkedgeodata.version") + " built at " + p.get("linkedgeodata.build.timestamp")); }

}
