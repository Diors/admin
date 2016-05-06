package com.huawei.gnoc.invas.webcore.model;

import java.util.Date;

public interface IUser {
	public static final String USER_ID = "USER_ID";
	public static final String USER_NAME = "USER_NAME";
	public static final String PASSWORD = "USER_PWD";
	public static final String PWD_ERR_CNT = "PWD_ERR_CNT";
	public static final String LOCK_FLAG = "LOCK_FLAG";
	public static final String CREATE_TIME = "CREATE_TIME";
	public static final String MODIFY_TIME = "MODIFY_TIME";
	public static final String LAST_LOGIN_TIME = "LAST_LOGIN_TIME";
	
	public long getUserId();
	public String getUserName();
	public String getUserPwd();
	public int getPwdErrCnt();
	public int getLockFlag();
	public Date getCreateTime();
	public Date getModifyTime();
	public Date getLastLoginTime();
}
