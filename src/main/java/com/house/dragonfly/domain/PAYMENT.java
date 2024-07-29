package com.house.dragonfly.domain;

public class PAYMENT {
	private int pay_id;
	private int booking_bo_num;
	private double card_card_number;
	private String pay_name;
	private String pay_method;
	private String pay_date;	
	private double pay_amount;
	private String pay_status;
	
	public PAYMENT() {}

	public PAYMENT(int booking_bo_num, double card_card_number, String pay_name, String pay_method, String pay_date,
			double pay_amount, String pay_status) {
		this.booking_bo_num = booking_bo_num;
		this.card_card_number = card_card_number;
		this.pay_name = pay_name;
		this.pay_method = pay_method;
		this.pay_date = pay_date;
		this.pay_amount = pay_amount;
		this.pay_status = pay_status;
	}

	public PAYMENT(int pay_id, int booking_bo_num, double card_card_number, String pay_name, String pay_method,
			String pay_date, double pay_amount, String pay_status) {
		this.pay_id = pay_id;
		this.booking_bo_num = booking_bo_num;
		this.card_card_number = card_card_number;
		this.pay_name = pay_name;
		this.pay_method = pay_method;
		this.pay_date = pay_date;
		this.pay_amount = pay_amount;
		this.pay_status = pay_status;
	}

	
	
	public PAYMENT(int pay_id, double card_card_number, String pay_method, String pay_date) {
		this.pay_id = pay_id;
		this.card_card_number = card_card_number;
		this.pay_method = pay_method;
		this.pay_date = pay_date;
	}

	public PAYMENT(int pay_id, String pay_name, String pay_method, String pay_date) {
		this.pay_id = pay_id;
		this.pay_name = pay_name;
		this.pay_method = pay_method;
		this.pay_date = pay_date;
	}

	public int getPay_id() {
		return pay_id;
	}

	public void setPay_id(int pay_id) {
		this.pay_id = pay_id;
	}

	public int getBooking_bo_num() {
		return booking_bo_num;
	}

	public void setBooking_bo_num(int booking_bo_num) {
		this.booking_bo_num = booking_bo_num;
	}

	public double getCard_card_number() {
		return card_card_number;
	}

	public void setCard_card_number(double card_card_number) {
		this.card_card_number = card_card_number;
	}

	public String getPay_name() {
		return pay_name;
	}

	public void setPay_name(String pay_name) {
		this.pay_name = pay_name;
	}

	public String getPay_method() {
		return pay_method;
	}

	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}

	public String getPay_date() {
		return pay_date;
	}

	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}

	public double getPay_amount() {
		return pay_amount;
	}

	public void setPay_amount(double pay_amount) {
		this.pay_amount = pay_amount;
	}

	public String getPay_status() {
		return pay_status;
	}

	public void setPay_status(String pay_status) {
		this.pay_status = pay_status;
	}

	

	
	

	
	
	
}//end class
