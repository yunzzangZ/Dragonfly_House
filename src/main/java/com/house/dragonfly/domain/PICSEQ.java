package com.house.dragonfly.domain;

public class PICSEQ {
	
	private int pic_num;

	public PICSEQ() { }

	public PICSEQ(int pic_num) {
		this.pic_num = pic_num;
	}

	public int getPic_num() {
		return pic_num;
	}

	public void setPic_num(int pic_num) {
		this.pic_num = pic_num;
	}

	@Override
	public String toString() {
		return "PICTURE [pic_num=" + pic_num + "]";
	}
	
	
	
	
	
	
}
