package com.house.dragonfly.domain;

public class LOGIN {
	private String email;
	private String password;
	
	public LOGIN() {}

	public LOGIN(String email, String password) {
		this.email = email;
		this.password = password;
	}

	@Override
	public String toString() {
		return "LoginVO [email=" + email + ", password=" + password + "]";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
}//end class
