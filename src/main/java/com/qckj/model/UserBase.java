package com.qckj.model;

public class UserBase {
private String id;
private int number;
private String name;
private int gender;
private long birthday;
private int age;
private String major;
private String Classes;
private String phone;
private String department;
private String qqnumber;
private String origin;
private String other;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public int getNumber() {
	return number;
}
public void setNumber(int number) {
	this.number = number;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getGender() {
	return gender;
}
public void setGender(int gender) {
	this.gender = gender;
}
public long getBirthday() {
	return birthday;
}
public void setBirthday(long birthday) {
	this.birthday = birthday;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getMajor() {
	return major;
}
public void setMajor(String major) {
	this.major = major;
}
public String getClasses() {
	return Classes;
}
public void setClasses(String classes) {
	Classes = classes;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
public String getQqnumber() {
	return qqnumber;
}
public void setQqnumber(String qqnumber) {
	this.qqnumber = qqnumber;
}
public String getOrigin() {
	return origin;
}
public void setOrigin(String origin) {
	this.origin = origin;
}
public String getOther() {
	return other;
}
public void setOther(String other) {
	this.other = other;
}
@Override
public String toString() {
	return "UserBase [id=" + id + ", number=" + number + ", name=" + name + ", gender=" + gender + ", birthday="
			+ birthday + ", age=" + age + ", major=" + major + ", Class=" + Classes + ", phone=" + phone + ", department="
			+ department + ", qqnumber=" + qqnumber + ", origin=" + origin + ", other=" + other + "]";
}


}
