package com.qckj.model;

public class AdminBase {
	private String id;
	private String name;
	private int number;
	private String phone;
	private int permission;
	private int gender;
	private String other;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getPermission() {
		return permission;
	}

	public void setPermission(int permission) {
		this.permission = permission;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", username=" +", name=" + name + ", number="
				+ number + ", phone=" + phone + ", permission=" + permission + ", gender=" + gender + ", other=" + other
				+ "]";
	}

}
