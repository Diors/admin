package com.huawei.gnoc.invas.webcore.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.huawei.gnoc.invas.webcore.controller.AbstractSessionController;

public class SessionLoginFilter extends AbstractSessionController implements Filter  {
	private static final Logger logger = Logger.getLogger(SessionLoginFilter.class.getName());

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		String url = httpRequest.getServletPath();
		logger.debug("Request url:" + url);

		if (!checkLogin(httpRequest)) {
			if (!("/login.jsp").equals(url) && url.endsWith("jsp")) {
				httpResponse.sendRedirect("/invas/login.jsp");
			}
		} 
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

	

}
