package com.qckj.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qckj.dao.AdminDao;
import com.qckj.model.Admin;
import com.qckj.model.AdminBase;
import com.qckj.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService{
@Autowired
AdminDao adminDao;
	public void addAdmin(Admin admin) throws Exception {
		adminDao.addAdmin(admin);
		
	}

	public Admin getAdminById(String id) throws Exception {
		
		return adminDao.getAdminById(id);
	}

	public void reduceAdminById(String id) throws Exception {
		adminDao.reduceAdminById(id);
		
	}

	public void updateAdminBase(AdminBase adminbase) throws Exception {
		adminDao.updateAdminBase(adminbase);
		
	}

	public AdminBase getAdminBaseById(String id) throws Exception {
	
		return adminDao.getAdminBaseById(id);
	}

	public Admin getPwdByUsername(String username) throws Exception {
		
		return adminDao.getPwdByUsername(username);
	}

	public int checkAdminByUserName(String username) throws Exception {
		
		return adminDao.checkAdminByUserName(username);
	}

}
