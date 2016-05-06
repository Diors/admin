package com.huawei.gnoc.invas.webcore.model;

import java.util.Date;

public interface IUser {
	public static final String USER_ID = "userId";
	
	public long getUserId();
	public String getUserName();
	public String getUserPwd();
	public int getPwdErrCnt();
	public int getLockFlag();
	public Date getCreateTime();
	public Date getModifyTime();
	public Date getLastLoginTime();
}
