package com.example.demo.dto;

public class Member {
	String userName;
	String password;
	int usercnt;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUsercnt() {
		return usercnt;
	}
	public void setUsercnt(int usercnt) {
		this.usercnt = usercnt;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
