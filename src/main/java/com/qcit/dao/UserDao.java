package com.qcit.dao;

import org.apache.ibatis.annotations.Param;

import com.qcit.model.Student;

public interface UserDao {
	/**
	 * 根据student的id查询数据库表student中的学生
	 * 
	 * @param id
	 * @return 返回学生对象
	 */
	public Student getStudentById(String id);

	/**
	 * 向数据库表中student中增加学生
	 * 
	 * @param student
	 */
	public void setStudent(Student student);

	/**
	 * 修改学生表中的学生基础信息
	 * 
	 * @param student
	 */
	public void updateStudentBasics(Student student);

	/**
	 * 删除对应id的学生信息
	 * 
	 * @param id
	 */
	public void deleteStudentById(String id);

	/**
	 * 通过id修改学生用户密码
	 * 
	 * @param id
	 * @param newpassword
	 */
	public void updateStudentPwdById(@Param("id")String id, @Param("newpassword")String newpassword);
	/**
	 * 根据用户名和密码查询用户
	 * @param password
	 * @param username
	 * @return
	 */
	public Student getStudentByPwdAndUserName(@Param("username")String username,@Param("password")String password);
}
