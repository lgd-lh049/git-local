package com.gd.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;

@Configuration
@Import({com.gd.config.MyBatisConfig.class, com.gd.config.JdbcConfig.class})
@ComponentScan(value = "com.gd.service")
@EnableTransactionManagement
public class SpringConfig {
    //数据源的事物管理
    @Bean("transactionManager")
    public DataSourceTransactionManager getDataSourceTXManager(@Autowired DataSource ds){
        DataSourceTransactionManager dtm = new DataSourceTransactionManager();
        dtm.setDataSource(ds);
        return dtm;
    }
}
