package com.velocity.registration;

public class UserID {
	String UserName ;

	public UserID() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserID(String userName) {
		super();
		UserName = userName;
	}

	public String getUserID() {
		return UserName;
	}

	public void setUserID(String userName) {
		UserName = userName;
	}
	
}
