package com.house.dragonfly.domain;

public class CARD {
	private int card_number;
	private int card_password;
	private String card_duodate;
	
	public CARD() {}

	public CARD(int card_number, int card_password, String card_duodate) {
		this.card_number = card_number;
		this.card_password = card_password;
		this.card_duodate = card_duodate;
	}

	public int getCard_number() {
		return card_number;
	}

	public void setCard_number(int card_number) {
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

	@Override
	public String toString() {
		return "CARD [card_number=" + card_number + ", card_password=" + card_password + ", card_duodate="
				+ card_duodate + "]";
	}

	
	
	
}//end class
