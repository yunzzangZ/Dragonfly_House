package com.house.dragonfly.domain;

public class WISHLIST {

	private String email;
	private int ro_num;
	
	public WISHLIST() {	}

	public WISHLIST(String email, int ro_num) {
		this.email = email;
		this.ro_num = ro_num;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getRo_num() {
		return ro_num;
	}

	public void setRo_num(int ro_num) {
		this.ro_num = ro_num;
	}

	@Override
	public String toString() {
		return "WISHLIST [email=" + email + ", ro_num=" + ro_num + "]";
	}

	
	
	
}
