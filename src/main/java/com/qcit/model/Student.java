package com.qcit.model;

import java.io.Serializable;

public class Student implements Serializable {

	private static final long serialVersionUID = -1038025972243682696L;
	private String id;
	private String username;
	private String password;
	private String classes;
	private int gender;
	private String department;
	private String qq;
	private String phone;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", username=" + username + ", password="
				+ password + ", classes=" + classes + ", gender=" + gender
				+ ", department=" + department + ", qq=" + qq + ", phone="
				+ phone + "]";
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
