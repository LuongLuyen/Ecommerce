package com.javaspring.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaspring.utils.Utils;

public class AuthorizationFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		filterConfig.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		String url = httpRequest.getRequestURI();

		if (url.startsWith("/spring-MVC/admin")) {
			if (Utils.isAdmin(httpRequest)) {// admin co id =1
				chain.doFilter(request, response);
			} else {// user con lai
				httpResponse.sendRedirect(httpRequest.getContextPath() + "/login"); // no role admin
			}
		} else if (url.startsWith("/spring-MVC/test")) {
			chain.doFilter(request, response);
		} else if (url.startsWith("/spring-MVC/")) {
			chain.doFilter(request, response);
		}

	}

	@Override
	public void destroy() {

	}
}
