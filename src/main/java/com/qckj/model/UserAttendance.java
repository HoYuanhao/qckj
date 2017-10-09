package com.qckj.model;

public class UserAttendance {
	private String id;
	private int attendance;
	private int absence;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getAttendance() {
		return attendance;
	}

	public void setAttendance(int attendance) {
		this.attendance = attendance;
	}

	public int getAbsence() {
		return absence;
	}

	public void setAbsence(int absence) {
		this.absence = absence;
	}

	@Override
	public String toString() {
		return "UserAttendance [id=" + id + ", attendance=" + attendance + ", absence=" + absence + "]";
	}

}
