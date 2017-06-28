package org.aksw.linkedgeodata.web.api;

import javax.ws.rs.Produces;
import javax.ws.rs.ext.Provider;

import org.apache.jena.riot.WebContent;

@Provider
@Produces({WebContent.contentTypeTurtle, WebContent.contentTypeTurtleAlt1, WebContent.contentTypeTurtleAlt2})
public class MessageBodyWriterTurtle
	extends AbstractModelMessageReaderWriterProvider
{
	public MessageBodyWriterTurtle() {
		super("TURTLE");
	}
}