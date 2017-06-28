package org.aksw.linkedgeodata.web.main;

import java.net.URL;
import java.net.URLClassLoader;
import java.security.ProtectionDomain;

import javax.servlet.ServletException;

import org.aksw.commons.util.slf4j.LoggerCount;
import org.aksw.linkedgeodata.web.api.RDFWriterHtml;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.GnuParser;
import org.apache.commons.cli.Options;
import org.apache.jena.rdf.model.impl.RDFWriterFImpl;
import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.bio.SocketConnector;
import org.eclipse.jetty.util.component.AbstractLifeCycle.AbstractLifeCycleListener;
import org.eclipse.jetty.util.component.LifeCycle;
import org.eclipse.jetty.webapp.WebAppContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/*
class HtmlWriter
    implements RDFWriter
{

    @Override
    public void write(Model model, Writer out, String base) {
        // TODO Auto-generated method stub

    }

    @Override
    public void write(Model model, OutputStream out, String base) {
        // TODO Auto-generated method stub

    }

    @Override
    public Object setProperty(String propName, Object propValue) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public RDFErrorHandler setErrorHandler(RDFErrorHandler errHandler) {
        // TODO Auto-generated method stub
        return null;
    }
}
*/

/**
 *
 *
 * http://stackoverflow.com/questions/10738816/deploying-a-servlet-
 * programmatically-with-jetty
 * http://stackoverflow.com/questions/3718221/add-resources
 * -to-jetty-programmatically
 *
 * @author raven
 *
 *
 */
public class MainLinkedGeoDataRestServer {

    private static final Logger logger = LoggerFactory.getLogger(MainLinkedGeoDataRestServer.class);


    private static final Options cliOptions = new Options();

    static {
        cliOptions.addOption("P", "port", true, "Server port");
        cliOptions.addOption("s", "service", true, "Sparql service url");
    }

    public static void printClassPath() {
        ClassLoader cl = ClassLoader.getSystemClassLoader();

        URL[] urls = ((URLClassLoader)cl).getURLs();

        for(URL url: urls){
            System.out.println(url.getFile());
        }
    }

    // Source:
    // http://eclipsesource.com/blogs/2009/10/02/executable-wars-with-jetty/
    public static void main(String[] args) throws Exception {

        RDFWriterFImpl.setBaseWriterClassName("HTML", RDFWriterHtml.class.getName());


        LoggerCount loggerCount = new LoggerCount(logger);

        //Class.forName("org.postgresql.Driver");

        CommandLineParser cliParser = new GnuParser();
        CommandLine commandLine = cliParser.parse(cliOptions, args);


        String portStr = commandLine.getOptionValue("P", "9998");
        int port = Integer.parseInt(portStr);

        AppConfig.lgdServiceUrl = commandLine.getOptionValue("s", "http://linkedgeodata.org/vsparql");


        ProtectionDomain protectionDomain = MainLinkedGeoDataRestServer.class.getProtectionDomain();
        URL location = protectionDomain.getCodeSource().getLocation();
        String externalForm = location.toExternalForm();

        logger.debug("External form: " + externalForm);

        // Try to detect whether we are being run from an
        // archive (uber jar / war) or just from compiled classes
        if(externalForm.endsWith("/classes/")) {
            externalForm = "src/main/webapp";
            //externalForm = "target/sparqlify-web-admin-server";
        }


        logger.debug("Loading webAppContext from " + externalForm);


        startServer(port, externalForm);
    }

    public static void startServer(int port, String externalForm) {


        Server server = new Server();
        SocketConnector connector = new SocketConnector();

        // Set some timeout options to make debugging easier.
        connector.setMaxIdleTime(1000 * 60 * 60);
        connector.setSoLingerTime(-1);
        connector.setPort(port);
        server.setConnectors(new Connector[] { connector });

        final WebAppContext webAppContext = new WebAppContext();

        webAppContext.addLifeCycleListener(new AbstractLifeCycleListener() {
            @Override
            public void lifeCycleStarting(LifeCycle arg0) {
                WebAppInitializer initializer = new WebAppInitializer();
                try {
                    initializer.onStartup(webAppContext.getServletContext());
                } catch (ServletException e) {
                    throw new RuntimeException(e);
                }
            }
        });

        webAppContext.setServer(server);
        webAppContext.setContextPath("/");

        //context.setDescriptor(externalForm + "/WEB-INF/web.xml");
        webAppContext.setWar(externalForm);

        server.setHandler(webAppContext);
        try {
            server.start();
            System.in.read();
            server.stop();
            server.join();
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(1);
        }
    }
}
