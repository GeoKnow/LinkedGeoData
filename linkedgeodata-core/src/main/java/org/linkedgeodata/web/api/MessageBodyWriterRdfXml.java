package org.linkedgeodata.web.api;

import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.ext.Provider;

import org.apache.jena.riot.WebContent;

@Provider
@Produces({WebContent.contentTypeRDFXML, MediaType.APPLICATION_XML, "*/*"})
public class MessageBodyWriterRdfXml
	extends AbstractModelMessageReaderWriterProvider
{
	public MessageBodyWriterRdfXml() {
		super("RDF/XML");
	}
}
