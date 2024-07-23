package com.house.dragonfly.domain;

import java.sql.Date;

public class NOTICE {
	private int notice_id;
	private String emial;
	private String notice_title;
	private String notice_text;
	private Date notice_date;
	
	public NOTICE() {}

	public NOTICE(int notice_id, String emial, String notice_title, String notice_text, Date notice_date) {
		this.notice_id = notice_id;
		this.emial = emial;
		this.notice_title = notice_title;
		this.notice_text = notice_text;
		this.notice_date = notice_date;
	}

	public int getNotice_id() {
		return notice_id;
	}

	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}

	public String getEmial() {
		return emial;
	}

	public void setEmial(String emial) {
		this.emial = emial;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_text() {
		return notice_text;
	}

	public void setNotice_text(String notice_text) {
		this.notice_text = notice_text;
	}

	public Date getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}

	@Override
	public String toString() {
		return "NOTICE [notice_id=" + notice_id + ", emial=" + emial + ", notice_title=" + notice_title
				+ ", notice_text=" + notice_text + ", notice_date=" + notice_date + "]";
	}

	
	
	
	
	
	
}//end class
