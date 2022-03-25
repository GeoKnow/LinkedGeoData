package org.aksw.linkedgeodata.osm.replication.dao;

import java.util.function.Function;

import org.apache.jena.ext.com.google.common.base.Splitter;

import com.google.common.base.Strings;

import jersey.repackaged.com.google.common.base.Joiner;

public class SequenceIdFormatter
    implements Function<Long, String>
{
    protected char padChar = '0';
    protected int padSize = 9;
    protected int groupSize = 3;
    protected char separator = '/';

    @Override
    public String apply(Long seqId) {
        String result = Joiner.on(separator).join(Splitter.fixedLength(groupSize).split(Strings.padStart(Long.toString(seqId), padSize, padChar)));
        return result;
    }

}
