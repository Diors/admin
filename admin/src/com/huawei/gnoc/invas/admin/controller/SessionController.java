package com.huawei.gnoc.invas.admin.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.huawei.gnoc.invas.admin.AbstractSessionController;
import com.huawei.gnoc.invas.admin.dao.UserDao;
import com.huawei.gnoc.invas.admin.model.User;

@Controller
public class SessionController extends AbstractSessionController{
	private final ObjectMapper objectMapper = new ObjectMapper();
	
	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "login.do")
	@ResponseBody
	public String login(HttpServletRequest request ) throws IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password").toUpperCase();
		User user = userDao.getUserByName(username);
		ObjectWriter objectWriter = objectMapper.writerWithView(User.class);
		Map<String,String> resultMap = new HashMap<String,String>();
		if(user == null){
			resultMap.put("Result", "Failure");
			resultMap.put("message", "The account does not exist.");
		}
		else{
			if(password.equals(user.getUserPwd())){
				HttpSession session = request.getSession();
				session.setAttribute("isLogin", "Y");
				session.setAttribute("user-id", user.getUserId());
				session.setAttribute("user-name", user.getUserName());
				resultMap.put("Result", "Success");
				resultMap.put("message", "Login successfully.");
			}else{
				resultMap.put("Result", "Failure");
				resultMap.put("message", "Account and password error!");
			}
		}
		return objectWriter.writeValueAsString(resultMap);
	}
	
	
	@RequestMapping(value = "logout.do")
	@ResponseBody
	public int logout(HttpServletRequest request ) {
		request.getSession().invalidate();
		return 0;
	}
	
}
