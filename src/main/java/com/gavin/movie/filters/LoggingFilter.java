package com.gavin.movie.filters;


import java.io.IOException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


public class LoggingFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("LoggingFilter initialized");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        // 请求开始时间
        String requestTime = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
                .format(LocalDateTime.now());
        System.out.println("Request Time: " + requestTime);

        // 放行请求，继续处理后续Filter或请求处理
        chain.doFilter(request, response);

        // 响应结束时间
        String responseTime = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
                .format(LocalDateTime.now());
        System.out.println("Response Time: " + responseTime);
    }

    @Override
    public void destroy() {
        System.out.println("LoggingFilter destroyed");
    }
}
