package com.qckj.service;

import java.util.List;

import com.qckj.model.UserAuthentication;
import com.qckj.model.UserBase;
import com.qckj.model.UserBaseVo;

public interface UserService {
	void addUserAuthentication(UserAuthentication userAuthentication) throws Exception;

	void addUserBase(UserBase userBase) throws Exception;

	List<UserBaseVo> getAllUser() throws Exception;

	int checkUserByUserName(String username) throws Exception;

	UserBaseVo selectUserById(String id) throws Exception;

	void updateUserBase(UserBaseVo userbasevo) throws Exception;

	void deleteUserById(String id) throws Exception;

	List<String> getAllName() throws Exception;
	
	String[] getIdByName(String[] name)throws Exception;
	
	List<String> getDetailedList()throws Exception;
	
	String userLogin(String username,String password)throws Exception;

}
