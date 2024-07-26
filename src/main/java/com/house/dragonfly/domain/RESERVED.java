package com.house.dragonfly.domain;

public class RESERVED {
	
	private int bo_num;
	
	public RESERVED() {}

	public RESERVED(int bo_num) {
		this.bo_num = bo_num;
	}

	public int getBo_num() {
		return bo_num;
	}

	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}

	@Override
	public String toString() {
		return "RESERVED [bo_num=" + bo_num + "]";
	}

	
	
}
