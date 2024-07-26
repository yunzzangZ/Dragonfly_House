package com.house.dragonfly.domain;

public class SENDDING_TXT {
	private int mail_txt_code;
	private String mail_txt_title;
	private String mail_txt_content;
	
	public SENDDING_TXT() {}

	public SENDDING_TXT(int mail_txt_code, String mail_txt_title, String mail_txt_content) {
		this.mail_txt_code = mail_txt_code;
		this.mail_txt_title = mail_txt_title;
		this.mail_txt_content = mail_txt_content;
	}

	public int getMail_txt_code() {
		return mail_txt_code;
	}

	public void setMail_txt_code(int mail_txt_code) {
		this.mail_txt_code = mail_txt_code;
	}

	public String getMail_txt_title() {
		return mail_txt_title;
	}

	public void setMail_txt_title(String mail_txt_title) {
		this.mail_txt_title = mail_txt_title;
	}

	public String getMail_txt_content() {
		return mail_txt_content;
	}

	public void setMail_txt_content(String mail_txt_content) {
		this.mail_txt_content = mail_txt_content;
	}

	@Override
	public String toString() {
		return "SENDDING_TXT [mail_txt_code=" + mail_txt_code + ", mail_txt_title=" + mail_txt_title
				+ ", mail_txt_content=" + mail_txt_content + "]";
	}

	

	
	
}//end class
