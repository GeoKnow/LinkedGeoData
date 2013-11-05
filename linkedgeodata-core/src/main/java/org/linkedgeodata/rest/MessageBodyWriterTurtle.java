package org.linkedgeodata.rest;

import javax.ws.rs.Produces;
import javax.ws.rs.ext.Provider;

import org.apache.jena.riot.WebContent;

@Provider
@Produces({WebContent.contentTypeTurtle})
//@Consumes({HttpParams.contentTypeTurtle, "text/xml", "*/*"})
public class MessageBodyWriterTurtle
	extends AbstractModelMessageReaderWriterProvider
{
	public MessageBodyWriterTurtle() {
		super("TURTLE");
	}
}