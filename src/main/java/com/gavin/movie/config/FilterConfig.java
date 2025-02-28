package com.gavin.movie.config;

import com.gavin.movie.filters.LoggingFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class FilterConfig {

    @Bean
    public FilterRegistrationBean<LoggingFilter> loggingFilter() {
        FilterRegistrationBean<LoggingFilter> registrationBean = new FilterRegistrationBean();

        // 设置自定义的Filter
        registrationBean.setFilter(new LoggingFilter());

        // 配置Filter的拦截路径，可以根据需要修改
        registrationBean.addUrlPatterns("/movie/*");  // 拦截所有/api/*路径的请求

        // 设置Filter的优先级，数字越小，优先级越高
        registrationBean.setOrder(1);

        return registrationBean;
    }
}
