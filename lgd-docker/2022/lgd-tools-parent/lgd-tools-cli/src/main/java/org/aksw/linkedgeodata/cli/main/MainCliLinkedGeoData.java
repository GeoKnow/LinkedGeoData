package org.aksw.linkedgeodata.cli.main;

import org.aksw.commons.picocli.CmdUtils;
import org.aksw.linkedgeodata.cli.command.main.CmdLgdParent;

public class MainCliLinkedGeoData {
	public void main(String[] args) {
		CmdUtils.execCmd(CmdLgdParent.class, args);
	}
}
