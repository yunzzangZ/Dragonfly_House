package com.house.dragonfly.domain;

public class ReservesVO {
	
	private int bo_num;
	
	public ReservesVO() {}

	public ReservesVO(int bo_num) {
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
	//-------------------
}
