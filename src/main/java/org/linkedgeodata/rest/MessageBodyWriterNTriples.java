package org.linkedgeodata.rest;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.ext.MessageBodyWriter;
import javax.ws.rs.ext.Provider;

import com.hp.hpl.jena.rdf.model.Model;
import com.hp.hpl.jena.sparql.engine.http.HttpParams;

@Provider
@Produces({HttpParams.contentTypeNTriples})
//@Consumes({HttpParams.contentTypeNTriples})
public class MessageBodyWriterNTriples
	//extends AbstractModelMessageReaderWriterProvider
	implements MessageBodyWriter<Model>
{
	public MessageBodyWriterNTriples() {
		System.out.println("---");
	}
	
	/*
	public MessageBodyWriterNTriples() {
		super("N-TRIPLES");
		
		throw new RuntimeException("Hooray - Initialized");
	}*/
	
	@Override
	public boolean isWriteable(Class<?> type, Type genericType,
			Annotation[] annotations, MediaType mediaType) {
		return Model.class.isAssignableFrom(type);
	}

	@Override
	public void writeTo(Model t, Class<?> type, Type genericType,
			Annotation[] annotations, MediaType mediaType,
			MultivaluedMap<String, Object> httpHeaders,
			OutputStream entityStream) throws IOException,
			WebApplicationException {


		t.write(entityStream, "N-TRIPLES");
	}

	@Override
	public long getSize(Model t, Class<?> type, Type genericType,
			Annotation[] annotations, MediaType mediaType) {
		return -1;
	}	

}