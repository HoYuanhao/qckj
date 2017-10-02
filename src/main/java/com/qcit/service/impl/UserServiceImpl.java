package com.qcit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qcit.dao.UserDao;
import com.qcit.model.Student;
import com.qcit.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
private UserDao userdao;

	public Student getStudentById(String id) throws Exception{
		
		
		return userdao.getStudentById(id);
	}

	public void setStudent(Student student) throws Exception{
		userdao.setStudent(student);
		
	}

	public void updateStudentBasics(Student student) throws Exception{
		userdao.updateStudentBasics(student);
		
	}

	public void deleteStudentById(String id) throws Exception{
		userdao.deleteStudentById(id);
		
	}

	public void updateStudentPwdById(String id, String newpassword)throws Exception {
		userdao.updateStudentPwdById(id, newpassword);
		
	}

	public Student getStudentByUsernameAndPwd(String username, String password) throws Exception{
		return userdao.getStudentByPwdAndUserName(username, password);
	}


}
