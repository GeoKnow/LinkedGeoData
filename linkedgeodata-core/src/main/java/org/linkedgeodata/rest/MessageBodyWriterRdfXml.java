package org.linkedgeodata.rest;

import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.ext.Provider;

import com.hp.hpl.jena.sparql.engine.http.HttpParams;

//@Produces({HttpParams.contentTypeTextPlain})
//@Consumes({HttpParams.contentTypeTextPlain})
@Provider
@Produces({HttpParams.contentTypeRDFXML, MediaType.TEXT_PLAIN, "*/*"})
//@Consumes({HttpParams.contentTypeRDFXML})
public class MessageBodyWriterRdfXml
	extends AbstractModelMessageReaderWriterProvider
{
	public MessageBodyWriterRdfXml() {
		super("RDF/XML");
	}
}
