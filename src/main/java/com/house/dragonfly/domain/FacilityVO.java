package com.house.dragonfly.domain;

public class FacilityVO  {
	
	private int fac_id;
	private String fac_name;
	private String fac_description;
	private String pension_pen_addr;
	
	public FacilityVO() {
	}

	public FacilityVO(int fac_id, String fac_name, String fac_description, String pension_pen_addr) {
		super();
		this.fac_id = fac_id;
		this.fac_name = fac_name;
		this.fac_description = fac_description;
		this.pension_pen_addr = pension_pen_addr;
	}

	public int getFac_id() {
		return fac_id;
	}

	public void setFac_id(int fac_id) {
		this.fac_id = fac_id;
	}

	public String getFac_name() {
		return fac_name;
	}

	public void setFac_name(String fac_name) {
		this.fac_name = fac_name;
	}

	public String getFac_description() {
		return fac_description;
	}

	public void setFac_description(String fac_description) {
		this.fac_description = fac_description;
	}

	public String getPension_pen_addr() {
		return pension_pen_addr;
	}

	public void setPension_pen_addr(String pension_pen_addr) {
		this.pension_pen_addr = pension_pen_addr;
	}

	@Override
	public String toString() {
		return "FacilityVO [fac_id=" + fac_id + ", fac_name=" + fac_name + ", fac_description=" + fac_description
				+ ", pension_pen_addr=" + pension_pen_addr + "]";
	}

	
	
	//================
}
