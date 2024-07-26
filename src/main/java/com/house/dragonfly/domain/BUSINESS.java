package com.house.dragonfly.domain;

public class BUSINESS {
	private String bu_eamil;
	private String bu_password;
	private String bu_tel;
	private String bu_name;
	private String bu_addr;
	private String bu_code;
	private String bu_title;
	private String bu_approval;
	private String bu_account_num;
	
	public BUSINESS() {}

	public BUSINESS(String bu_eamil, String bu_password, String bu_tel, String bu_name, String bu_addr, String bu_code,
			String bu_title, String bu_approval, String bu_account_num) {
		this.bu_eamil = bu_eamil;
		this.bu_password = bu_password;
		this.bu_tel = bu_tel;
		this.bu_name = bu_name;
		this.bu_addr = bu_addr;
		this.bu_code = bu_code;
		this.bu_title = bu_title;
		this.bu_approval = bu_approval;
		this.bu_account_num = bu_account_num;
	}

	public String getBu_eamil() {
		return bu_eamil;
	}

	public void setBu_eamil(String bu_eamil) {
		this.bu_eamil = bu_eamil;
	}

	public String getBu_password() {
		return bu_password;
	}

	public void setBu_password(String bu_password) {
		this.bu_password = bu_password;
	}

	public String getBu_tel() {
		return bu_tel;
	}

	public void setBu_tel(String bu_tel) {
		this.bu_tel = bu_tel;
	}

	public String getBu_name() {
		return bu_name;
	}

	public void setBu_name(String bu_name) {
		this.bu_name = bu_name;
	}

	public String getBu_addr() {
		return bu_addr;
	}

	public void setBu_addr(String bu_addr) {
		this.bu_addr = bu_addr;
	}

	public String getBu_code() {
		return bu_code;
	}

	public void setBu_code(String bu_code) {
		this.bu_code = bu_code;
	}

	public String getBu_title() {
		return bu_title;
	}

	public void setBu_title(String bu_title) {
		this.bu_title = bu_title;
	}

	public String getBu_approval() {
		return bu_approval;
	}

	public void setBu_approval(String bu_approval) {
		this.bu_approval = bu_approval;
	}

	public String getBu_account_num() {
		return bu_account_num;
	}

	public void setBu_account_num(String bu_account_num) {
		this.bu_account_num = bu_account_num;
	}

	@Override
	public String toString() {
		return "BUSINESS [bu_eamil=" + bu_eamil + ", bu_password=" + bu_password + ", bu_tel=" + bu_tel + ", bu_name="
				+ bu_name + ", bu_addr=" + bu_addr + ", bu_code=" + bu_code + ", bu_title=" + bu_title
				+ ", bu_approval=" + bu_approval + ", bu_account_num=" + bu_account_num + "]";
	}
	
	
	
}//end class
