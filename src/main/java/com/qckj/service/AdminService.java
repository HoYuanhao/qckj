package com.qckj.service;

import com.qckj.model.Admin;
import com.qckj.model.AdminBase;

public interface AdminService {
	void addAdmin(Admin admin) throws Exception;

	Admin getAdminById(String id) throws Exception;

	void reduceAdminById(String id) throws Exception;

	void updateAdminBase(AdminBase adminbase) throws Exception;

	AdminBase getAdminBaseById(String id) throws Exception;

	Admin getPwdByUsername(String username) throws Exception;

	int checkAdminByUserName(String username) throws Exception;
}
