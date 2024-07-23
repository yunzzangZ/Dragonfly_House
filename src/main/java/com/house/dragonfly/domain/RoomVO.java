package com.house.dragonfly.domain;

public class RoomVO {
	private int ro_num;
	private String bu_email;
	private int pic_num;
	private String ro_name;
	private double ro_price;
	private String ro_info;
	private int max_person;
	
	public RoomVO() {}

	public RoomVO(int ro_num, String bu_email, int pic_num, String ro_name, double ro_price, String ro_info,
			int max_person) {
		this.ro_num = ro_num;
		this.bu_email = bu_email;
		this.pic_num = pic_num;
		this.ro_name = ro_name;
		this.ro_price = ro_price;
		this.ro_info = ro_info;
		this.max_person = max_person;
	}

	public int getRo_num() {
		return ro_num;
	}

	public void setRo_num(int ro_num) {
		this.ro_num = ro_num;
	}

	public String getBu_email() {
		return bu_email;
	}

	public void setBu_email(String bu_email) {
		this.bu_email = bu_email;
	}

	public int getPic_num() {
		return pic_num;
	}

	public void setPic_num(int pic_num) {
		this.pic_num = pic_num;
	}

	public String getRo_name() {
		return ro_name;
	}

	public void setRo_name(String ro_name) {
		this.ro_name = ro_name;
	}

	public double getRo_price() {
		return ro_price;
	}

	public void setRo_price(double ro_price) {
		this.ro_price = ro_price;
	}

	public String getRo_info() {
		return ro_info;
	}

	public void setRo_info(String ro_info) {
		this.ro_info = ro_info;
	}

	public int getMax_person() {
		return max_person;
	}

	public void setMax_person(int max_person) {
		this.max_person = max_person;
	}

	@Override
	public String toString() {
		return "ROOM [ro_num=" + ro_num + ", bu_email=" + bu_email + ", pic_num=" + pic_num + ", ro_name=" + ro_name
				+ ", ro_price=" + ro_price + ", ro_info=" + ro_info + ", max_person=" + max_person + "]";
	}
	//===================================
}
