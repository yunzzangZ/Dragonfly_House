package com.house.dragonfly.domain;

public class CS {
	private int cs_id;
	private String email;
	private String cs_title;
	private String cs_text;
	private String cs_date;
	private String cs_response;
	
	public CS() {}

	public CS(int cs_id, String email, String cs_title, String cs_text, String cs_date, String cs_response) {
		this.cs_id = cs_id;
		this.email = email;
		this.cs_title = cs_title;
		this.cs_text = cs_text;
		this.cs_date = cs_date;
		this.cs_response = cs_response;
	}
	
	
	

	public CS(String email, String cs_title, String cs_text, String cs_date) {
		this.email = email;
		this.cs_title = cs_title;
		this.cs_text = cs_text;
		this.cs_date = cs_date;
	}

	public int getCs_id() {
		return cs_id;
	}

	public void setCs_id(int cs_id) {
		this.cs_id = cs_id;
	}

	public String getMember_email() {
		return email;
	}

	public void setMember_email(String member_email) {
		this.email = member_email;
	}

	public String getCs_title() {
		return cs_title;
	}

	public void setCs_title(String cs_title) {
		this.cs_title = cs_title;
	}

	public String getCs_text() {
		return cs_text;
	}

	public void setCs_text(String cs_text) {
		this.cs_text = cs_text;
	}

	public String getCs_date() {
		return cs_date;
	}

	public void setCs_date(String cs_date) {
		this.cs_date = cs_date;
	}

	public String getCs_response() {
		return cs_response;
	}

	public void setCs_response(String cs_response) {
		this.cs_response = cs_response;
	}

	@Override
	public String toString() {
		return "CS [cs_id=" + cs_id + ", email=" + email + ", cs_title=" + cs_title + ", cs_text="
				+ cs_text + ", cs_date=" + cs_date + ", cs_response=" + cs_response + "]";
	}

	

	
	

	
	
	

	
	
}//end class
