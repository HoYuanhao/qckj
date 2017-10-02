package com.qcit.dao;

import org.apache.ibatis.annotations.Param;

import com.qcit.model.LoginLog;

public interface LoginLogDao {
	public void setLoginLog(@Param("id") String id, @Param("ip") String ip, @Param("authority") int authority);

	public LoginLog getLoginLog(String id);
}
