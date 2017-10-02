package com.qcit.service;

import com.qcit.model.Student;

public interface UserService {
	Student getStudentById(String id) throws Exception;

	void setStudent(Student student)throws Exception;

	void updateStudentBasics(Student student)throws Exception;

	void deleteStudentById(String id)throws Exception;

	void updateStudentPwdById(String id, String newpassword)throws Exception;
	
	Student getStudentByUsernameAndPwd(String username,String password)throws Exception;

}
