package com.house.dragonfly.domain;

public class CALCULATE { 
	private String bu_email;
	private String pay_id;
	private double cal_amount;
	
	public CALCULATE() { }

	public CALCULATE(String bu_email, String pay_id, double cal_amount) {
		this.bu_email = bu_email;
		this.pay_id = pay_id;
		this.cal_amount = cal_amount;
	}

	public String getBu_email() {
		return bu_email;
	}

	public void setBu_email(String bu_email) {
		this.bu_email = bu_email;
	}

	public String getPay_id() {
		return pay_id;
	}

	public void setPay_id(String pay_id) {
		this.pay_id = pay_id;
	}

	public double getCal_amount() {
		return cal_amount;
	}

	public void setCal_amount(double cal_amount) {
		this.cal_amount = cal_amount;
	}

	@Override
	public String toString() {
		return "CALCULATE [bu_email=" + bu_email + ", pay_id=" + pay_id + ", cal_amount=" + cal_amount + "]";
	}
	
	
	
	
	
	
}
