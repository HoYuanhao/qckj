package com.qcit.model;

import java.io.Serializable;

public class LoginLog implements Serializable {
	private static final long serialVersionUID = -7903679764542473219L;
	private String id;
	private String lastlogintime;
	private String lastloginip;
	private int authority;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLastlogintime() {
		return lastlogintime;
	}

	public void setLastlogintime(String lastlogintime) {
		this.lastlogintime = lastlogintime;
	}

	public String getLastloginip() {
		return lastloginip;
	}

	public void setLastloginip(String lastloginip) {
		this.lastloginip = lastloginip;
	}

	@Override
	public String toString() {
		return "LoginLog [id=" + id + ", lastlogintime=" + lastlogintime
				+ ", lastloginip=" + lastloginip + ", authority=" + authority
				+ "]";
	}



}
