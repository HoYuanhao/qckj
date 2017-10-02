package com.qcit.service;

import com.qcit.model.LoginLog;

public interface LoginLogService {
	 void setLoginLog(String id,String ip,int authority)throws Exception;
	
	 LoginLog getLoginLog(String id) throws Exception;
	
}
