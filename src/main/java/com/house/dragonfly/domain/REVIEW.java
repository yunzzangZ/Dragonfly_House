package com.house.dragonfly.domain;

public class REVIEW {
	private int rev_num;
	private String email;
	private int pic_num;
	private int bo_num;
	private String rev_title;
	private String rev_content;
	private String rev_date;
	private String content_reply;
	private String rev_report;
	
	public REVIEW() {}

	public REVIEW(int rev_num, String email, int pic_num, int bo_num, String rev_title, String rev_content,
			String rev_date, String content_reply, String rev_report) {
		this.rev_num = rev_num;
		this.email = email;
		this.pic_num = pic_num;
		this.bo_num = bo_num;
		this.rev_title = rev_title;
		this.rev_content = rev_content;
		this.rev_date = rev_date;
		this.content_reply = content_reply;
		this.rev_report = rev_report;
	}

	public int getRev_num() {
		return rev_num;
	}

	public void setRev_num(int rev_num) {
		this.rev_num = rev_num;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPic_num() {
		return pic_num;
	}

	public void setPic_num(int pic_num) {
		this.pic_num = pic_num;
	}

	public int getBo_num() {
		return bo_num;
	}

	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}

	public String getRev_title() {
		return rev_title;
	}

	public void setRev_title(String rev_title) {
		this.rev_title = rev_title;
	}

	public String getRev_content() {
		return rev_content;
	}

	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}

	public String getRev_date() {
		return rev_date;
	}

	public void setRev_date(String rev_date) {
		this.rev_date = rev_date;
	}

	public String getContent_reply() {
		return content_reply;
	}

	public void setContent_reply(String content_reply) {
		this.content_reply = content_reply;
	}

	public String getRev_report() {
		return rev_report;
	}

	public void setRev_report(String rev_report) {
		this.rev_report = rev_report;
	}

	@Override
	public String toString() {
		return "REVIEW [rev_num=" + rev_num + ", email=" + email + ", pic_num=" + pic_num + ", bo_num=" + bo_num
				+ ", rev_title=" + rev_title + ", rev_content=" + rev_content + ", rev_date=" + rev_date
				+ ", content_reply=" + content_reply + ", rev_report=" + rev_report + "]";
	}

	

	

	
	
	
}//end class
