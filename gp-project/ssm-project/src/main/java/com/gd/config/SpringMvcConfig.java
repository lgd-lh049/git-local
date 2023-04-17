package com.gd.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.*;

import java.util.List;

@Configuration
@ComponentScan("com.gd.controller")
@EnableWebMvc
public class SpringMvcConfig implements WebMvcConfigurer {

    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer){
        configurer.enable();
    }


    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/**")
                .excludePathPatterns(
                        "/index.jsp","/user/login",
                        "/user/regist","/ices",
                        "/static/**","/goshop/{id}"
                );

    }



}
