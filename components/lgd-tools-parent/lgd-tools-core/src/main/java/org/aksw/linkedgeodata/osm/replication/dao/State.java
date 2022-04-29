package org.aksw.linkedgeodata.osm.replication.dao;

import java.util.Calendar;

import org.apache.jena.rdf.model.Resource;

public interface State
    extends Resource
{
    Calendar getTimestamp();
    long getSeqId();
}
