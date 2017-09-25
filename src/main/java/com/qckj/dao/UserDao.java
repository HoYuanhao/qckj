package com.qckj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qckj.model.UserAuthentication;
import com.qckj.model.UserBase;
import com.qckj.model.UserBaseVo;

public interface UserDao {
	public void addUserAuthentication(@Param("userAuthentication") UserAuthentication userAuthentication);

	public void addUserBase(@Param("userBase") UserBase userBase);

	public List<UserBaseVo> getAllUser();

	public int checkUserByUserName(String username);

	public UserBaseVo selectUserById(String id);

	public void updateUserBase(UserBaseVo userbasevo);

	public void deleteUserById(String id);
	
	public List<String> getAllName();
	
	public String[] getIdByName(@Param("name")String[] name);
	
	public List<String> getDetailedList();
	
	public String getIdByUsernameAndPassword(@Param("username")String username,@Param("password")String password);
}
