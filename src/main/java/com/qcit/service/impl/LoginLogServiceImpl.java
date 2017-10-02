package com.qcit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qcit.dao.LoginLogDao;
import com.qcit.model.LoginLog;
import com.qcit.service.LoginLogService;

@Service
public class LoginLogServiceImpl implements LoginLogService{
	@Autowired
	private LoginLogDao loginLogDao;

	public void setLoginLog(String id, String ip,int authority) throws Exception{
		System.out.println(id+"   "+ip+"  "+authority);
		loginLogDao.setLoginLog(id, ip, authority);
	
	}

	public LoginLog getLoginLog(String id)throws Exception {
		 
		return loginLogDao.getLoginLog(id);
	}
	

}
