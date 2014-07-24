package org.linkedgeodata.web.main;

import java.util.HashSet;

import javax.annotation.Resource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.aksw.jena_sparql_api.cache.extra.CacheBackend;
import org.aksw.jena_sparql_api.cache.extra.CacheFrontend;
import org.aksw.jena_sparql_api.cache.extra.CacheFrontendImpl;
import org.aksw.jena_sparql_api.cache.staging.CacheBackendDao;
import org.aksw.jena_sparql_api.cache.staging.CacheBackendDaoPostgres;
import org.aksw.jena_sparql_api.cache.staging.CacheBackendDataSource;
import org.aksw.jena_sparql_api.core.QueryExecutionFactory;
import org.aksw.jena_sparql_api.core.SparqlServiceFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.jolbox.bonecp.BoneCPConfig;
import com.jolbox.bonecp.BoneCPDataSource;

@Configuration
@ComponentScan({"org.linkedgeodata.web.api"})
//@PropertySource("classpath:config/jdbc/jdbc.properties")
// @EnableTransactionManagement
public class AppConfig {
    private static final Logger logger = LoggerFactory
            .getLogger(AppConfig.class);

    private static final String JDBC_DRIVER = "jdbc.driver";
    private static final String JDBC_PASSWORD = "jdbc.password";
    private static final String JDBC_URL = "jdbc.url";
    private static final String JDBC_USERNAME = "jdbc.username";


    @Resource
    private Environment env;

    /**
     * When starting the server from the command line, this attribute can be set
     * to override any other means of creating a data source
     */
    public static DataSource cliDataSource = null;
    public static String lgdServiceUrl = null;
    
    @Bean
    public DataSource dataSource() throws IllegalArgumentException,
            ClassNotFoundException {

        // TODO Somehow allow loading drivers dynamically
        Class.forName("org.postgresql.Driver");

        DataSource dsBean = null;

        Exception firstException = null;
        try {

            String jndiName = "java:comp/env/jdbc/linkedGeoDataDs";
            Context ctx = new InitialContext();
            dsBean = (DataSource) ctx.lookup(jndiName);
            
        } catch (NamingException e) {
            logger.info("Exception on retrieving initial JNDI context - trying a different method");
            firstException = e;
        }
        
        // TODO If the second attempt fails, also log the first exception

        if(dsBean == null) {
            DriverManagerDataSource dataSource = new DriverManagerDataSource();

            dataSource.setDriverClassName(env.getRequiredProperty(JDBC_DRIVER));
            dataSource.setUrl(env.getRequiredProperty(JDBC_URL));
            dataSource.setUsername(env.getRequiredProperty(JDBC_USERNAME));
            dataSource.setPassword(env.getRequiredProperty(JDBC_PASSWORD));

            dsBean = dataSource;            
        }
        
        BoneCPConfig cpConfig = new BoneCPConfig();
        cpConfig.setDatasourceBean(dsBean);

        cpConfig.setMinConnectionsPerPartition(1);
        cpConfig.setMaxConnectionsPerPartition(10);
        cpConfig.setPartitionCount(2);
        //cpConfig.setCloseConnectionWatch(true);
        
        DataSource result = new BoneCPDataSource(cpConfig);

        return result;
    }

    @Bean
    @Autowired
    public SparqlServiceFactory sparqlServiceFactory(DataSource dataSource) {
        CacheBackendDao dao = new CacheBackendDaoPostgres();
        CacheBackend cacheBackend = new CacheBackendDataSource(dataSource, dao); 
        CacheFrontend cacheFrontend = new CacheFrontendImpl(cacheBackend);      

        SparqlServiceFactory result = new SparqlServiceFactoryImpl(cacheFrontend);
        return result;
    }

    @Bean
    public String lgdSparqlServiceUrl() {
        return lgdServiceUrl;
    }
    
    
    @Bean
    @Autowired
    public QueryExecutionFactory queryExecutionFactory(SparqlServiceFactory sparqlServiceFactory) {
        if(lgdServiceUrl == null) {
            throw new RuntimeException("LinkedGeoData Service Url not specified");
        }
        
        QueryExecutionFactory result = sparqlServiceFactory.createSparqlService(lgdServiceUrl, new HashSet<String>());
        return result;
    }

}
