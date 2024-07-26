package com.house.dragonfly.domain;

public class RoomVO {
	private int ro_num; //
	private String pension_pen_addr;
	private int pic_num; //
	private String ro_name;
	private double ro_price; //
	private String ro_info; 
	private int ro_max_person;
	private int picture_pic_num;
	
	public RoomVO() {
	}

	public RoomVO(int ro_num, String pension_pen_addr, int pic_num, String ro_name, double ro_price, String ro_info,
			int ro_max_person, int picture_pic_num) {
		this.ro_num = ro_num;
		this.pension_pen_addr = pension_pen_addr;
		this.pic_num = pic_num;
		this.ro_name = ro_name;
		this.ro_price = ro_price;
		this.ro_info = ro_info;
		this.ro_max_person = ro_max_person;
		this.picture_pic_num = picture_pic_num;
	}

	public int getRo_num() {
		return ro_num;
	}

	public void setRo_num(int ro_num) {
		this.ro_num = ro_num;
	}

	public String getPension_pen_addr() {
		return pension_pen_addr;
	}

	public void setPension_pen_addr(String pension_pen_addr) {
		this.pension_pen_addr = pension_pen_addr;
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

	public int getRo_max_person() {
		return ro_max_person;
	}

	public void setRo_max_person(int ro_max_person) {
		this.ro_max_person = ro_max_person;
	}

	public int getPicture_pic_num() {
		return picture_pic_num;
	}

	public void setPicture_pic_num(int picture_pic_num) {
		this.picture_pic_num = picture_pic_num;
	}

	@Override
	public String toString() {
		return "RoomVO [ro_num=" + ro_num + ", pension_pen_addr=" + pension_pen_addr + ", pic_num=" + pic_num
				+ ", ro_name=" + ro_name + ", ro_price=" + ro_price + ", ro_info=" + ro_info + ", ro_max_person="
				+ ro_max_person + ", picture_pic_num=" + picture_pic_num + "]";
	}


	//===================================
}
