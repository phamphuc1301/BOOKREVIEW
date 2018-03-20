package com.fsoft.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fsoft.entities.User;
import com.fsoft.utils.Constants;

public class AppFilter implements Filter {

    public void destroy() {
        // TODO Auto-generated method stub
    }

    /**
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        System.out.println("inside filter");
        String userName, password;
        userName = request.getParameter("userName");
        password = request.getParameter("password");

        RequestDispatcher rDispatcher;
        HttpSession session = ((HttpServletRequest) request).getSession();
        User user = (User) session.getAttribute("user");
        
        if ((userName == null) && (password == null)) {
            if (user == null) {
                /*HttpServletRequest servletRequest = (HttpServletRequest) request;
                HttpServletResponse servletResponse = (HttpServletResponse) response;
                
                servletResponse.sendRedirect(servletRequest.getContextPath()+"/views/sign-in.jsp");*/
                rDispatcher = request
                        .getRequestDispatcher("/views/sign-in.jsp");
                rDispatcher.forward(request, response);
                /* } */
            } else {
                chain.doFilter(request, response);
            }
        } else {
            chain.doFilter(request, response);
        }
    

    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub

    }

}
