package com.huawei.gnoc.invas.manager.dao;

import java.util.List;
import java.util.Map;

import com.huawei.gnoc.invas.manager.model.IIssue;

public interface IIssueDao {
	
	public Number selectNextIssueIdSeq();
	
	public void insertIssue(Map<?,?> params);
	
	public void updateIssueStatus(String status,Number IssueId);
	
	
	public IIssue selectIssueById(Number issueId);
	public List<IIssue> selectIssues(Map<?,?> params); 
	
}
