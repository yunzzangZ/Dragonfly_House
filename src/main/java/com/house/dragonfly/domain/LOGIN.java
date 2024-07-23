package com.house.dragonfly.domain;

public class LOGIN {
	private String userID;
	private String password;
	
	public LOGIN() {}

	public LOGIN(String userID, String password) {
		this.userID = userID;
		this.password = password;
	}

	@Override
	public String toString() {
		return "LoginVO [userID=" + userID + ", password=" + password + "]";
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}//end class
