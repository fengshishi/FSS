package com.no1.cz.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
	  /**
     * @param registry 配置静态资源放行
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
    }


	 @Override
	    public void addInterceptors(InterceptorRegistry registry) {
	        // addPathPatterns - 用于添加拦截规则
	        // excludePathPatterns - 用户排除拦截
	        registry.addInterceptor(new UserInterceptor())
	                .addPathPatterns("/cart/insert")
	                .excludePathPatterns( "/user/tologin");
	    }
}
