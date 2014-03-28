package org.linkedgeodata.web.api;

import javax.ws.rs.Produces;
import javax.ws.rs.ext.Provider;

import org.apache.jena.riot.WebContent;

@Provider
@Produces({WebContent.contentTypeTurtle})
public class MessageBodyWriterTurtle
	extends AbstractModelMessageReaderWriterProvider
{
	public MessageBodyWriterTurtle() {
		super("TURTLE");
	}
}