package com.qckj.model;

import java.util.List;

public class ItemsCustom {
	private String id;
	private String topic;
	private int price;
	private int number;
	private long begintime;
	private long endtime;
	private List<ItemsJoiner> joinerlist;
public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public long getBegintime() {
		return begintime;
	}
	public void setBegintime(long begintime) {
		this.begintime = begintime;
	}
	public long getEndtime() {
		return endtime;
	}
	public void setEndtime(long endtime) {
		this.endtime = endtime;
	}
	public List<ItemsJoiner> getJoinerlist() {
		return joinerlist;
	}
	public void setJoinerlist(List<ItemsJoiner> joinerlist) {
		this.joinerlist = joinerlist;
	}



}
