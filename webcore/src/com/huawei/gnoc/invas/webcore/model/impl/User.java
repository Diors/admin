package com.huawei.gnoc.invas.webcore.model.impl;

import java.util.Date;

import com.huawei.gnoc.invas.core.utils.Variable;
import com.huawei.gnoc.invas.webcore.model.IUser;

public class User extends Variable implements IUser {
	private static final long serialVersionUID = 1151688727782846577L;

	public long getUserId() {
		Object obj = super.get(IUser.USER_ID);
		return (Long) obj;
	}

	public String getUserName() {
		return (String) super.get(IUser.USER_NAME);
	}

	public String getUserPwd() {
		return (String)super.getValString(IUser.PASSWORD);
	}

	public int getPwdErrCnt() {
		return (int) super.getValInt(IUser.PWD_ERR_CNT);
	}

	public int getLockFlag() {
		
		return (int) super.getValInt(IUser.LOCK_FLAG);
	}

	public Date getCreateTime() {
		return (Date)super.get(IUser.CREATE_TIME);
	}

	public Date getModifyTime() {
		return (Date)super.get(IUser.MODIFY_TIME);
	}

	public Date getLastLoginTime() {
		return (Date)super.get(IUser.LAST_LOGIN_TIME);
	}

}
