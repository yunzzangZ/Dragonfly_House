package com.house.dragonfly.domain;

import java.sql.Date;

public class SENDING {

	private int mail_txt_code;
	private String email;
	private Date send_date;
	private String send_status;
	
	public SENDING() {}

	public SENDING(int mail_txt_code, String email, Date send_date, String send_status) {
		this.mail_txt_code = mail_txt_code;
		this.email = email;
		this.send_date = send_date;
		this.send_status = send_status;
	}

	public int getMail_txt_code() {
		return mail_txt_code;
	}

	public void setMail_txt_code(int mail_txt_code) {
		this.mail_txt_code = mail_txt_code;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getSend_date() {
		return send_date;
	}

	public void setSend_date(Date send_date) {
		this.send_date = send_date;
	}

	public String getSend_status() {
		return send_status;
	}

	public void setSend_status(String send_status) {
		this.send_status = send_status;
	}

	@Override
	public String toString() {
		return "SENDING [mail_txt_code=" + mail_txt_code + ", email=" + email + ", send_date=" + send_date
				+ ", send_status=" + send_status + "]";
	}

	
	
	
	
		
}
