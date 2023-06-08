package com.gd.config;


import com.github.pagehelper.PageInterceptor;
import org.apache.ibatis.plugin.Interceptor;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;

import javax.sql.DataSource;
import java.util.Properties;

public class MyBatisConfig {

    @Bean
    public PageInterceptor getPageInterceptor(){
        PageInterceptor pi = new PageInterceptor();
        Properties properties = new Properties();
        properties.setProperty("value","true");
        pi.setProperties(properties);
        return pi;
    }
    @Bean
    public SqlSessionFactoryBean getSqlSessionFactoryBean(@Autowired DataSource ds,@Autowired PageInterceptor pageInterceptor){
        SqlSessionFactoryBean ssfb = new SqlSessionFactoryBean();
        ssfb.setDataSource(ds);
        Interceptor[] plugins = {pageInterceptor};
        ssfb.setPlugins(plugins);
        return ssfb;
    }

    @Bean
    public MapperScannerConfigurer getMapperScannerConfigurer(){
        MapperScannerConfigurer msc = new MapperScannerConfigurer();
        msc.setBasePackage("com.gd.mapper");
        return msc;
    }


}
