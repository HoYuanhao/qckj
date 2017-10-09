package com.qckj.dao;

import org.apache.ibatis.annotations.Param;

import com.qckj.model.Admin;
import com.qckj.model.AdminBase;

public interface AdminDao {
	public void addAdmin(Admin admin);

	public Admin getAdminById(@Param("id")String id);

	public void reduceAdminById(@Param("id")String id);

	public void updateAdminBase(AdminBase adminbase);

	public AdminBase getAdminBaseById(@Param("id")String id);
	
	public Admin getPwdByUsername(@Param("username")String username);
	public int checkAdminByUserName(String username);
}
