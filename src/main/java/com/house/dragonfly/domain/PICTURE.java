package com.house.dragonfly.domain;

public class PICTURE {
	private int pic_num;
	private String pic_location;
	
	public PICTURE() {}

	public PICTURE(int pic_num, String pic_location) {
		this.pic_num = pic_num;
		this.pic_location = pic_location;
	}

	public int getPic_num() {
		return pic_num;
	}

	public void setPic_num(int pic_num) {
		this.pic_num = pic_num;
	}

	public String getPic_location() {
		return pic_location;
	}

	public void setPic_location(String pic_location) {
		this.pic_location = pic_location;
	}

	@Override
	public String toString() {
		return "PICSEQ [pic_num=" + pic_num + ", pic_location=" + pic_location + "]";
	}
	
	
	
	
}//end class
