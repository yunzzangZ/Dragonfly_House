package com.house.dragonfly.domain;

public class RoomFacilityVO {
    private int room_ro_num; 
    private String rofac_name;  
    private String rofac_description;
	public RoomFacilityVO() {}
	
	public RoomFacilityVO(int room_ro_num, String rofac_name, String rofac_description) {
		this.room_ro_num = room_ro_num;
		this.rofac_name = rofac_name;
		this.rofac_description = rofac_description;
	}

	public int getRoom_ro_num() {
		return room_ro_num;
	}

	public void setRoom_ro_num(int room_ro_num) {
		this.room_ro_num = room_ro_num;
	}

	public String getRofac_name() {
		return rofac_name;
	}

	public void setRofac_name(String rofac_name) {
		this.rofac_name = rofac_name;
	}

	public String getRofac_description() {
		return rofac_description;
	}

	public void setRofac_description(String rofac_description) {
		this.rofac_description = rofac_description;
	} 

    
    
    
    
}

   