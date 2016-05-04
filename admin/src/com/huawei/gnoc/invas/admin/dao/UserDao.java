package com.huawei.gnoc.invas.admin.dao;

import java.util.List;
import java.util.Map;

import com.huawei.gnoc.invas.admin.model.User;

public interface UserDao {
	public long selectNextUserIdSeq();
	public User getUserByName(String username);
	
	public void insertUser(String userid, String userName,String userPwd,long orgId);
	public void modifyUserPwd(long userId, String userPwd);
	public void modifyAfterLogin(long userId);
	public void updatePasswordError(long userid);
	
	public int selectTotalUserCnt();
	public List<User> selectSomeUsers(Map param);
}
