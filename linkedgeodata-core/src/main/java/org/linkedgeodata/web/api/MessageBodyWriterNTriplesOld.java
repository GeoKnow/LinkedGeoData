package org.linkedgeodata.web.api;

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

import org.apache.jena.riot.WebContent;

import com.hp.hpl.jena.rdf.model.Model;
//
//@Provider
//@Produces({WebContent.contentTypeTextPlain, WebContent.contentTypeNTriples})
//public class MessageBodyWriterNTriplesOld
//	implements MessageBodyWriter<Model>
//{
//	public MessageBodyWriterNTriplesOld() {
//        //super("N-TRIPLES");
//	}
//	
//	/*
//	public MessageBodyWriterNTriples() {
//		super("N-TRIPLES");
//		
//		throw new RuntimeException("Hooray - Initialized");
//	}*/
//	
//	@Override
//	public boolean isWriteable(Class<?> type, Type genericType,
//			Annotation[] annotations, MediaType mediaType) {
//		return Model.class.isAssignableFrom(type);
//	}
//
//	@Override
//	public void writeTo(Model t, Class<?> type, Type genericType,
//			Annotation[] annotations, MediaType mediaType,
//			MultivaluedMap<String, Object> httpHeaders,
//			OutputStream entityStream) throws IOException,
//			WebApplicationException {
//
//
//		t.write(entityStream, "N-TRIPLES");
//	}
//
//	@Override
//	public long getSize(Model t, Class<?> type, Type genericType,
//			Annotation[] annotations, MediaType mediaType) {
//		return -1;
//	}	
//
//}