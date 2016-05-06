package com.huawei.gnoc.invas.webcore.model.impl;

import java.util.Date;

import com.huawei.gnoc.invas.core.utils.Variable;
import com.huawei.gnoc.invas.webcore.model.IUser;

public class User extends Variable implements IUser{
	private static final long serialVersionUID = 1151688727782846577L;
	private long userId;
	private String userName;
	private String userPwd;
	private int pwdErrCnt;
	private int lockFlag;
	private Date createTime;
	private Date modifyTime;
	private Date lastLoginTime;
	private long orgId;
	public long getUserId() {
		Object obj = super.get(IUser.USER_ID);
		return (Long)obj;
	}
	public String getUserName() {
		return userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public int getPwdErrCnt() {
		return pwdErrCnt;
	}
	public int getLockFlag() {
		return lockFlag;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public Date getModifyTime() {
		return modifyTime;
	}
	public Date getLastLoginTime() {
		return lastLoginTime;
	}
	
}
