package com.house.dragonfly.domain;

public class PAYMENT {
	private int pay_id;
	private int bo_num;
	private int car_number;
	private String pay_name;
	private String pay_method;
	private String pay_date;	
	private double pay_amount;
	private String pay_status;
	
	public PAYMENT() {}

//	카드결제
	public PAYMENT(int pay_id, int bo_num, int car_number, String pay_method, String pay_date, double pay_amount,
			String pay_status) {
		this.pay_id = pay_id;
		this.bo_num = bo_num;
		this.car_number = car_number;//카드번호
		this.pay_method = pay_method;
		this.pay_date = pay_date;
		this.pay_amount = pay_amount;
		this.pay_status = pay_status;
	}

//	현금결제
	public PAYMENT(int pay_id, int bo_num, String pay_name, String pay_method, String pay_date, double pay_amount,
			String pay_status) {
		this.pay_id = pay_id;
		this.bo_num = bo_num;
		this.pay_name = pay_name;//예금자이름
		this.pay_method = pay_method;
		this.pay_date = pay_date;
		this.pay_amount = pay_amount;
		this.pay_status = pay_status;
	}

	public int getPay_id() {
		return pay_id;
	}

	public void setPay_id(int pay_id) {
		this.pay_id = pay_id;
	}

	public int getBo_num() {
		return bo_num;
	}

	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}

	public int getCar_number() {
		return car_number;
	}

	public void setCar_number(int car_number) {
		this.car_number = car_number;
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

	@Override
	public String toString() {
		return "PAYMENT [pay_id=" + pay_id + ", bo_num=" + bo_num + ", car_number=" + car_number + ", pay_name="
				+ pay_name + ", pay_method=" + pay_method + ", pay_date=" + pay_date + ", pay_amount=" + pay_amount
				+ ", pay_status=" + pay_status + "]";
	}

	
	
	
}//end class
