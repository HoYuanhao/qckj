package com.qckj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qckj.dao.UserDao;
import com.qckj.model.UserAuthentication;
import com.qckj.model.UserBase;
import com.qckj.model.UserBaseVo;
import com.qckj.service.UserService;
@Service
public class UserServiceImpl implements UserService{
@Autowired
	UserDao userdao;
	public void addUserAuthentication(UserAuthentication userAuthentication) throws Exception {
		// TODO 自动生成的方法存根
		userdao.addUserAuthentication(userAuthentication);
		
	}

	public void addUserBase(UserBase userBase) throws Exception {
		// TODO 自动生成的方法存根
		userdao.addUserBase(userBase);
		
	}

	public List<UserBaseVo> getAllUser() throws Exception {
		
		return userdao.getAllUser();
	}

	public int checkUserByUserName(String username) throws Exception {
		
		return userdao.checkUserByUserName(username);
	}

	public UserBaseVo selectUserById(String id) throws Exception {
	
		return userdao.selectUserById(id);
	}

	public void updateUserBase(UserBaseVo userbasevo) throws Exception {
	userdao.updateUserBase(userbasevo);
		
	}

	public void deleteUserById(String id) throws Exception {
		userdao.deleteUserById(id);
		
	}

	public List<String> getAllName() throws Exception {
		return userdao.getAllName();
		
		
	}

	public String[] getIdByName(String[] name) throws Exception {
		
		return userdao.getIdByName(name);
	}

	public List<String> getDetailedList() throws Exception {
		
		return userdao.getDetailedList();
	}

	public String userLogin(String username, String password) throws Exception {
		
		return userdao.getIdByUsernameAndPassword(username, password);
	}

	
}
