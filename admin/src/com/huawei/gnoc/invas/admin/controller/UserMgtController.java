package com.huawei.gnoc.invas.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huawei.gnoc.invas.admin.dao.UserDao;
import com.huawei.gnoc.invas.admin.model.User;

@Controller
public class UserMgtController {

	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "admin/usermgt/siderbar.do")
	private String enterAddUserPage() {
		return "admin/sidebar";
	}

	//@RequestMapping(value = "admin/usermgt/pageWapper.do")
	private String addUser(HttpServletRequest request) {
		return "admin/allUserInfo";
	}

	//@RequestMapping(value = "admin/usermgt/queryAllUsers.do")
	@RequestMapping(value = "admin/usermgt/pageWapper.do")
	private ModelAndView allUserInfo(HttpServletRequest request){
		String setment = request.getParameter("segment");
		String pageNumber = request.getParameter("pageNumber");
		
		int iSegment = (setment != null)?Integer.parseInt(setment):10;
		int iPageNumber = (pageNumber!=null)?Integer.parseInt(pageNumber):1;
		Map param = new HashMap();
		param.put("floor", iSegment*(iPageNumber-1));
		param.put("roof", iSegment*iPageNumber);
		List<User> list = userDao.selectSomeUsers(param);
		ModelAndView modelAndView = new ModelAndView("admin/allUserInfo");
		modelAndView.addObject("userlist", list);
		modelAndView.addObject("count", list.size());
		return modelAndView;
	}
}
