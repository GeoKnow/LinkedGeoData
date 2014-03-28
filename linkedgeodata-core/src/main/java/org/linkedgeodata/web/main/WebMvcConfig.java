package org.linkedgeodata.web.main;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.web.accept.ContentNegotiationManager;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.ContentNegotiatingViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;



@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "org.aksw.linkedgeodata.web.api")
public class WebMvcConfig
	extends WebMvcConfigurerAdapter
{
    @Autowired
    private ServletContext servletContext;


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/bower_components/**").addResourceLocations("/bower_components/");
        registry.addResourceHandler("/scripts/**").addResourceLocations("/scripts/");
        registry.addResourceHandler("/styles/**").addResourceLocations("/styles/");
    }


    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/index.do").setViewName("index");
    }
    

//    @Bean
//    public ServletForwardingController endpointsFwdCtrl() {
//      ServletForwardingController result = new ServletForwardingController();
//      result.setServletName("sparqlify-endpoints");
//      
//      return result;
//    }
    
//    @Bean
//    public SimpleUrlHandlerMapping urlMapping() {
//      SimpleUrlHandlerMapping result = new SimpleUrlHandlerMapping();
//
////        ServletForwardingController fwd1 = new ServletForwardingController();
////        fwd1.setServletName("sparqlify-admin-api");
////
////
////        Map<String, Object> urlMap = new HashMap<String, Object>();
////        urlMap.put("/manager/*", fwd1);
////        urlMap.put("/endpoints/*", fwd2);
////        result.setUrlMap(urlMap);
//
//      Properties mappings = new Properties();
//      mappings.put("/endpoints/*", "endpointsFwdCtrl");
//      
//      result.setMappings(mappings);
//
//      return result;
//    }


    //http://spring.io/blog/2013/05/11/content-negotiation-using-spring-mvc/
    @Override
    public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
        
        Map<String, MediaType> mediaTypes = new HashMap<String, MediaType>();
        mediaTypes.put("htm", MediaType.TEXT_HTML);
        mediaTypes.put("html", MediaType.TEXT_HTML);
        mediaTypes.put("json", MediaType.APPLICATION_JSON);
        
        
        configurer.favorPathExtension(true);
        configurer.favorParameter(true);
        configurer.parameterName("mediaType");
        configurer.ignoreAcceptHeader(false);
        configurer.useJaf(false);
        configurer.defaultContentType(MediaType.TEXT_HTML);
        configurer.mediaTypes(mediaTypes);
    }
    
    @Bean
    public ViewResolver contentNegotiatingViewResolver(ContentNegotiationManager manager) {
        // Define the view resolvers
        List<ViewResolver> resolvers = new ArrayList<ViewResolver>();

        //resolvers.add(internalResourceViewResolverJsp());
        //resolvers.add(urlBasedViewResolver());
        resolvers.add(internalResourceViewResolverHtml());
        
        // Create the CNVR plugging in the resolvers and the content-negotiation manager
        ContentNegotiatingViewResolver resolver = new ContentNegotiatingViewResolver();
        resolver.setViewResolvers(resolvers);
        resolver.setContentNegotiationManager(manager);
        return resolver;
    }
    
    
    public ViewResolver urlBasedViewResolver() {
        UrlBasedViewResolver result = new InternalResourceViewResolver();
//      result.setPrefix("/WEB-INF/jsp/");
//      result.setSuffix(".jsp");
//      result.setOrder(0);
        return result;
    }

    
    //@Bean(name="viewResolverJsp")
    public InternalResourceViewResolver internalResourceViewResolverJsp() {
        InternalResourceViewResolver result = new InternalResourceViewResolver();
        result.setPrefix("/WEB-INF/jsp/");
        result.setSuffix(".jsp");
        result.setViewClass(JstlView.class);
//      result.setOrder(1);
        return result;
    }

    //@Bean(name="viewResolverHtml")
    public InternalResourceViewResolver internalResourceViewResolverHtml() {
        InternalResourceViewResolver result = new InternalResourceViewResolver();
        //result.setPrefix("/resources/app/");
        result.setPrefix("");
        result.setSuffix(".html");
//      result.setOrder(2);
        return result;
    }

}
