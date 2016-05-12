package com.huawei.gnoc.invas.webcore.dao;

import java.math.BigDecimal;
import java.util.List;

import com.huawei.gnoc.invas.core.utils.Variable;
import com.huawei.gnoc.invas.webcore.model.IUser;

public interface IUserDao {
	public BigDecimal selectNextUserIdSeq();
	public IUser selectUserByName(String username);
	public IUser selectUserById(long userid);
	
	public void insertUser(Variable param);
	public void updateUserPwd(long userId, String userPwd);
	public void updateLastLoginTime(long userId);
	public void updatePasswordError(long userid);
	
	public int selectTotalUserCnt();
	public List<IUser> selectSomeUsers(Variable param);
}
