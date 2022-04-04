package org.aksw.linkedgeodata.web.api;

import javax.ws.rs.Produces;
import javax.ws.rs.ext.Provider;

import org.apache.jena.riot.WebContent;

@Provider
@Produces({WebContent.contentTypeTextPlain, WebContent.contentTypeNTriples})
public class MessageBodyWriterNTriples
	extends AbstractModelMessageReaderWriterProvider
{
	public MessageBodyWriterNTriples() {
		super("N-TRIPLES");
	}
}
