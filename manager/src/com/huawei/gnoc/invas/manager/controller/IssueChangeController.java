package com.huawei.gnoc.invas.manager.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huawei.gnoc.invas.manager.dao.IIssueDao;
import com.huawei.gnoc.invas.manager.model.IIssue;

@Controller
@RequestMapping(value = "manager/issue_change/")
public class IssueChangeController {

	@Autowired
	private IIssueDao issueDao;
	
	@RequestMapping(value = "siderbar.do")
	public String getSideBar(){
		return "manager/sidebar";
	}
	
	@RequestMapping(value = "pageWapper.do")
	private String allUserInfo() {
		return "manager/dashboard";
	}
	
	
	@RequestMapping(value="queryIssues.do")
	private ModelAndView queryIssues(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView("manager/queryIssue");
		List<IIssue> issueList = issueDao.selectIssues(null);
		modelAndView.addObject("issuelist", issueList);
		return modelAndView;
	}
	
	
	
	@RequestMapping(value="createIssues.do")
	private ModelAndView createIssues(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView("manager/createIssue");
		List<IIssue> issueList = issueDao.selectIssues(null);
		modelAndView.addObject("issuelist", issueList);
		return modelAndView;
	}
	
}
