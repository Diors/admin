package com.huawei.gnoc.invas.admin.controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.huawei.gnoc.invas.core.utils.Variable;
import com.huawei.gnoc.invas.webcore.dao.IUserDao;
import com.huawei.gnoc.invas.webcore.model.IUser;

@Controller
@RequestMapping(value = "admin/usermgt/")
public class UserMgtController {

	@Autowired
	private IUserDao userDao;

	@RequestMapping(value = "siderbar.do")
	private String enterAddUserPage() {
		return "admin/sidebar";
	}

	@RequestMapping(value = "pageWapper.do")
	private ModelAndView allUserInfo(HttpServletRequest request) {
		String setment = request.getParameter("segment");
		String pageNumber = request.getParameter("pageNumber");

		int iSegment = (setment != null) ? Integer.parseInt(setment) : 10;
		int iPageNumber = (pageNumber != null) ? Integer.parseInt(pageNumber) : 1;
		Variable param = new Variable();
		param.put("floor", iSegment * (iPageNumber - 1));
		param.put("roof", iSegment * iPageNumber);
		List<IUser> list = userDao.selectSomeUsers(param);
		ModelAndView modelAndView = new ModelAndView("admin/allUserInfo");
		modelAndView.addObject("userlist", list);
		modelAndView.addObject("count", list.size());
		return modelAndView;
	}

	@RequestMapping(value = "loadpageCreateUser.do")
	private String addUser(HttpServletRequest request) {
		return "admin/createUser";
	}

	@RequestMapping(value = "createuser.do")
	@ResponseBody
	private Map<String, Object> createUser(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password").toUpperCase();
		IUser user = userDao.selectUserByName(username);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if (user != null) {

			resultMap.put("result", "1");
			resultMap.put("message", "User " + username + " exists.");
		} else {
			BigDecimal userId = userDao.selectNextUserIdSeq();
			Variable param = new Variable();
			param.put(IUser.USER_ID, userId);
			param.put(IUser.USER_NAME, username);
			param.put(IUser.PASSWORD, password);
			userDao.insertUser(param);
			resultMap.put("result", "0");
			resultMap.put("message", userId);
		}
		return resultMap;

	}

	@RequestMapping(value = "showuserinfo.do")
	private ModelAndView showUserInfo(HttpServletRequest request) {
		long userid = Long.parseLong(request.getParameter("userid"));
		IUser user = userDao.selectUserById(userid);
		ModelAndView modelAndView = new ModelAndView("admin/showUserInfo");
		modelAndView.addObject("user", user);
		return modelAndView;
	}

}
