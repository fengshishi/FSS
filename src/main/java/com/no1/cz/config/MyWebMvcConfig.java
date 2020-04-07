package com.no1.cz.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyWebMvcConfig implements WebMvcConfigurer {
 
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**").addResourceLocations(
				"classpath:/static/");/* F:\myl\eclipse\myl_workspace\fss\src\main\resources\static\images\books */
        registry.addResourceHandler("/images/books/**").addResourceLocations("file:F:/myl/eclipse/myl_workspace/fss/src/main/resources/static/images/books/");
    }                                                                        
 
}
