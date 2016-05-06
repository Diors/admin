package com.huawei.gnoc.invas.webcore.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

public class AbstractSessionController {
	private static final Logger logger = Logger.getLogger(AbstractSessionController.class.getName());
	
	protected boolean checkLogin(HttpServletRequest httpRequest) {
		boolean isLogin = false;
		HttpSession session = httpRequest.getSession();
		if (null != session) {
			if ("Y".equalsIgnoreCase((String) session.getAttribute("isLogin"))) {
				logger.debug("User "+session.getAttribute("user-name")+" have been login.");
				isLogin = true;
			}
		}
		return isLogin;
	}
}
