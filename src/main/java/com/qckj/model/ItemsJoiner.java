package com.qckj.model;

public class ItemsJoiner { 
private int id;
private String item_id;
private String[] user_id;
private long time;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getItem_id() {
	return item_id;
}
public void setItem_id(String item_id) {
	this.item_id = item_id;
}
public String[] getUser_id() {
	return user_id;
}
public void setUser_id(String[] user_id) {
	this.user_id = user_id;
}
public long getTime() {
	return time;
}
public void setTime(long time) {
	this.time = time;
}
@Override
public String toString() {
	return "itemsJoiner [id=" + id + ", item_id=" + item_id + ", user_id=" + user_id + ", time=" + time + "]";
}

}
