package com.huawei.gnoc.invas.webcore.dao;

import java.util.List;
import java.util.Map;

import com.huawei.gnoc.invas.webcore.model.IUser;

public interface IUserDao {
	public long selectNextUserIdSeq();
	public IUser getUserByName(String username);
	
	public void insertUser(String userid, String userName,String userPwd,long orgId);
	public void modifyUserPwd(long userId, String userPwd);
	public void modifyAfterLogin(long userId);
	public void updatePasswordError(long userid);
	
	public int selectTotalUserCnt();
	public List<IUser> selectSomeUsers(Map param);
}
