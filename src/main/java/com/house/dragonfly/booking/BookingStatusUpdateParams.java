package com.house.dragonfly.booking;

public class BookingStatusUpdateParams {
    private int bo_num;
    private String status;

    public BookingStatusUpdateParams(int bo_num, String status) {
        this.bo_num = bo_num;
        this.status = status;
    }

	public int getBo_num() {
		return bo_num;
	}

	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
    
    
}