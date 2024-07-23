package com.house.dragonfly.domain;

public class PAYMENT {
	private String payment_id;
	private double amount;
	private String payment_method;
	private String payment_status;
	private String email;
	
	public PAYMENT() {}

	public PAYMENT(String payment_id, double amount, String payment_method, String payment_status, String email) {
		this.payment_id = payment_id;
		this.amount = amount;
		this.payment_method = payment_method;
		this.payment_status = payment_status;
		this.email = email;
	}

	public String getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getPayment_method() {
		return payment_method;
	}

	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}

	public String getPayment_status() {
		return payment_status;
	}

	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "PAYMENT [payment_id=" + payment_id + ", amount=" + amount + ", payment_method=" + payment_method
				+ ", payment_status=" + payment_status + ", email=" + email + "]";
	}
	
	
	
}//end class
