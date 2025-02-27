package com.gavin.movie.interceptors;

import com.gavin.movie.domain.Movie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class MovieIntercept implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String viewType = request.getHeader("viewType");

        if ("internal".equalsIgnoreCase(viewType)) {
            request.setAttribute("jsonView", Movie.InternalView.class);
        } else {
            request.setAttribute("jsonView", Movie.PublicView.class);
        }
        return true; // continue request
    }
}
