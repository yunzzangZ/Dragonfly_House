package com.house.dragonfly.domain;

import java.sql.Date;

public class NOTICE {
    private int notice_id;
    private String notice_title;
    private String notice_text;
    private Date notice_date;
    private String member_email;

    // getters and setters

    public int getNotice_id() {
        return notice_id;
    }

    public void setNotice_id(int notice_id) {
        this.notice_id = notice_id;
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

    public String getMember_email() {
        return member_email;
    }

    public void setMember_email(String member_email) {
        this.member_email = member_email;
    }

	@Override
	public String toString() {
		return "NOTICE [notice_id=" + notice_id + ", notice_title=" + notice_title + ", notice_text=" + notice_text
				+ ", notice_date=" + notice_date + ", member_email=" + member_email + "]";
	}
}