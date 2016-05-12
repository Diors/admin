package com.huawei.gnoc.invas.webcore.model.impl;

import java.math.BigDecimal;

import com.huawei.gnoc.invas.core.exception.BasicException;
import com.huawei.gnoc.invas.core.utils.Variable;
import com.huawei.gnoc.invas.webcore.model.IUser;

public class User extends Variable implements IUser {
	private static final long serialVersionUID = 1151688727782846577L;

	public BigDecimal getUserId() {
		Object obj = super.get(IUser.USER_ID);
		return (BigDecimal) obj;
	}

	public String getUserName() {
		return (String) super.get(IUser.USER_NAME);
	}

	public String getUserPwd() throws BasicException {
		return (String) super.getValString(IUser.PASSWORD);
	}

	public int getPwdErrCnt() {
		return (int) super.getValInt(IUser.PWD_ERR_CNT);
	}

	public String getLockFlag() {
		int lockFlag = (int) super.getValInt(IUser.LOCK_FLAG);
		return lockFlag == 0 ? IUser.STATUS_UNLOCK : IUser.STATUS_LOCK;
	}

	public String getCreateTime() throws BasicException {
		 return super.getValString(IUser.CREATE_TIME);
	}

	public String getModifyTime() throws BasicException {
		return super.getValString(IUser.MODIFY_TIME);
	}

	public String getLastLoginTime() throws BasicException {
		return super.getValString(IUser.LAST_LOGIN_TIME);
	}

}
