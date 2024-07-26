package com.house.dragonfly.domain;

public class PensionVO {

	private String pen_addr;
	private String pen_name;
	private String pen_tel;
    private String pen_description; 
    private String business_bu_email;
	
	public PensionVO() {
	}

	public PensionVO(String pen_addr, String pen_name, String pen_tel, String pen_description,
			String business_bu_email) {
		this.pen_addr = pen_addr;
		this.pen_name = pen_name;
		this.pen_tel = pen_tel;
		this.pen_description = pen_description;
		this.business_bu_email = business_bu_email;
	}

	public String getPen_addr() {
		return pen_addr;
	}

	public void setPen_addr(String pen_addr) {
		this.pen_addr = pen_addr;
	}

	public String getPen_name() {
		return pen_name;
	}

	public void setPen_name(String pen_name) {
		this.pen_name = pen_name;
	}

	public String getPen_tel() {
		return pen_tel;
	}

	public void setPen_tel(String pen_tel) {
		this.pen_tel = pen_tel;
	}

	public String getPen_description() {
		return pen_description;
	}

	public void setPen_description(String pen_description) {
		this.pen_description = pen_description;
	}

	public String getBusiness_bu_email() {
		return business_bu_email;
	}

	public void setBusiness_bu_email(String business_bu_email) {
		this.business_bu_email = business_bu_email;
	}

	@Override
	public String toString() {
		return "PensionVO [pen_addr=" + pen_addr + ", pen_name=" + pen_name + ", pen_tel=" + pen_tel
				+ ", pen_description=" + pen_description + ", business_bu_email=" + business_bu_email + "]";
	}
	
	
	

	//=========================
}
