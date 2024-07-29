package com.house.dragonfly.domain;

public class BOOKING {
	private int bo_num;
	private String member_email;
	private int room_ro_num;
	private String bo_checkin;
	private String bo_checkout;
	private String bo_status;
	private String bo_paymethod;
	private double bo_price;
	
	public BOOKING() {}

	public BOOKING(int bo_num, String member_email, int room_ro_num, String bo_checkin, String bo_checkout,
			String bo_status, String bo_paymethod, double bo_price) {
		this.bo_num = bo_num;
		this.member_email = member_email;
		this.room_ro_num = room_ro_num;
		this.bo_checkin = bo_checkin;
		this.bo_checkout = bo_checkout;
		this.bo_status = bo_status;
		this.bo_paymethod = bo_paymethod;
		this.bo_price = bo_price;
	}

	public BOOKING(String member_email, int room_ro_num, String bo_checkin, String bo_checkout, String bo_status,
			String bo_paymethod, double bo_price) {
		this.member_email = member_email;
		this.room_ro_num = room_ro_num;
		this.bo_checkin = bo_checkin;
		this.bo_checkout = bo_checkout;
		this.bo_status = bo_status;
		this.bo_paymethod = bo_paymethod;
		this.bo_price = bo_price;
	}

	public int getBo_num() {
		return bo_num;
	}

	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public int getRoom_ro_num() {
		return room_ro_num;
	}

	public void setRoom_ro_num(int room_ro_num) {
		this.room_ro_num = room_ro_num;
	}

	public String getBo_checkin() {
		return bo_checkin;
	}

	public void setBo_checkin(String bo_checkin) {
		this.bo_checkin = bo_checkin;
	}

	public String getBo_checkout() {
		return bo_checkout;
	}

	public void setBo_checkout(String bo_checkout) {
		this.bo_checkout = bo_checkout;
	}

	public String getBo_status() {
		return bo_status;
	}

	public void setBo_status(String bo_status) {
		this.bo_status = bo_status;
	}

	public String getBo_paymethod() {
		return bo_paymethod;
	}

	public void setBo_paymethod(String bo_paymethod) {
		this.bo_paymethod = bo_paymethod;
	}

	public double getBo_price() {
		return bo_price;
	}

	public void setBo_price(double bo_price) {
		this.bo_price = bo_price;
	}

	@Override
	public String toString() {
		return "BOOKING [bo_num=" + bo_num + ", member_email=" + member_email + ", room_ro_num=" + room_ro_num
				+ ", bo_checkin=" + bo_checkin + ", bo_checkout=" + bo_checkout + ", bo_status=" + bo_status
				+ ", bo_paymethod=" + bo_paymethod + ", bo_price=" + bo_price + "]";
	}
	
	

}//end class
