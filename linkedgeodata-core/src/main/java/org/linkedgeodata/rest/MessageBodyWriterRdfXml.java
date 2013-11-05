package org.linkedgeodata.rest;

import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.ext.Provider;

import org.apache.jena.riot.WebContent;

//@Produces({HttpParams.contentTypeTextPlain})
//@Consumes({HttpParams.contentTypeTextPlain})
@Provider
@Produces({WebContent.contentTypeRDFXML, MediaType.TEXT_PLAIN, "*/*"})
//@Consumes({HttpParams.contentTypeRDFXML})
public class MessageBodyWriterRdfXml
	extends AbstractModelMessageReaderWriterProvider
{
	public MessageBodyWriterRdfXml() {
		super("RDF/XML");
	}
}
