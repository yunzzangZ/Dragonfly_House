package com.house.dragonfly.domain;

public class ReservedVO {
	
	private int booking_bo_num;
	
	public ReservedVO() {
		
	}

	public ReservedVO(int booking_bo_num) {
		this.booking_bo_num = booking_bo_num;
	}

	public int getBooking_bo_num() {
		return booking_bo_num;
	}

	public void setBooking_bo_num(int booking_bo_num) {
		this.booking_bo_num = booking_bo_num;
	}

	@Override
	public String toString() {
		return "ReservedVO [booking_bo_num=" + booking_bo_num + "]";
	}
	
	
}
	
