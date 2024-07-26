package com.house.dragonfly.domain;

public class RoomFacilityVO {
	
	private int room_ro_num;
	
	public RoomFacilityVO() {}

	public RoomFacilityVO(int room_ro_num) {
		this.room_ro_num = room_ro_num;
	}

	public int getRoom_ro_num() {
		return room_ro_num;
	}

	public void setRoom_ro_num(int room_ro_num) {
		this.room_ro_num = room_ro_num;
	}

	@Override
	public String toString() {
		return "RoomFacilityVO [room_ro_num=" + room_ro_num + "]";
	}
	//=======================
}
