package com.CrudMvc.Configuration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

@Configuration
public class AppInitializer implements WebApplicationInitializer{


	public void onStartup(ServletContext servletContext) throws ServletException {
		
		AnnotationConfigWebApplicationContext container= new AnnotationConfigWebApplicationContext();
		container.register(WebConfiguration.class);
	    container.setServletContext(servletContext);
	    
	    Dynamic servlet= servletContext.addServlet("dispatcher", new DispatcherServlet(container));
	    servlet.addMapping("/");
		servlet.setLoadOnStartup(3);
		
	}
	

}
