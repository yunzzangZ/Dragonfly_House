package com.house.dragonfly.domain;

public class CARD {
	private long card_number;
	private int card_password;
	private String card_duodate;
	private String member_email;
	
	public CARD() {}

	public CARD(long card_number, int card_password, String card_duodate, String member_email) {
		this.card_number = card_number;
		this.card_password = card_password;
		this.card_duodate = card_duodate;
		this.member_email = member_email;
	}

	public long getCard_number() {
		return card_number;
	}

	public void setCard_number(long card_number) {
		this.card_number = card_number;
	}

	public int getCard_password() {
		return card_password;
	}

	public void setCard_password(int card_password) {
		this.card_password = card_password;
	}

	public String getCard_duodate() {
		return card_duodate;
	}

	public void setCard_duodate(String card_duodate) {
		this.card_duodate = card_duodate;
	}

	
	
	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	@Override
	public String toString() {
		return "CARD [card_number=" + card_number + ", card_password=" + card_password + ", card_duodate="
				+ card_duodate + ", member_email=" + member_email + "]";
	}

	

	
	
	
}//end class
