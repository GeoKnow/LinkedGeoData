package org.linkedgeodata.web.api;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.ext.MessageBodyWriter;

import com.hp.hpl.jena.rdf.model.Model;
import com.hp.hpl.jena.rdf.model.ModelFactory;
import com.hp.hpl.jena.rdf.model.RDFWriter;


public class AbstractModelMessageReaderWriterProvider
//	extends AbstractMessageReaderWriterProvider<Model>
	implements MessageBodyWriter<Model>
{
	private final String lang;
	
	public AbstractModelMessageReaderWriterProvider(String lang) {
		this.lang = lang;
	}

	/*
	@Override
	public boolean isReadable(Class<?> type, Type genericType,
			Annotation[] annotations, MediaType mediaType) {
		return Model.class == type;
	}

	@Override
	public Model readFrom(Class<Model> type, Type genericType,
			Annotation[] annotations, MediaType mediaType,
			MultivaluedMap<String, String> httpHeaders, InputStream entityStream)
			throws IOException, WebApplicationException {

		Model result = ModelFactory.createDefaultModel();
		
		result.read(entityStream, null, lang);
		
		return result;
	}
	*/

	//private static RDFWriter htmlWriter = new RDFWriterHtml();
	
	public static RDFWriter getWriter(String format)
	{
		// FIXME The Jena writer needs to be configurable (e.g. css path)
		// Probably use ApplicationContext for that
		/*
		if("HTML".equalsIgnoreCase(format)) ;
			return htmlWriter;
		}
		*/
		
	    
	    
		RDFWriter writer = ModelFactory.createDefaultModel().getWriter(format);

		return writer;
	}
	
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


		t.write(entityStream, lang);
	}

	@Override
	public long getSize(Model t, Class<?> type, Type genericType,
			Annotation[] annotations, MediaType mediaType) {
		return -1;
	}	
}
