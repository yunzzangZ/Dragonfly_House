package com.house.dragonfly.domain;

public class MEMBER {
<<<<<<< HEAD
    private String email;
    private String password;
    private String tel;
    private String name;

    public MEMBER() {}

    public MEMBER(String email, String password, String tel, String name) {
        this.email = email;
        this.password = password;
        this.tel = tel;
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
=======
	private String email;
	private String password;
	private String tel;
	private String name;
	private String admin_check;	

	public MEMBER() {}

	public MEMBER(String email, String password, String tel, String name, String admin_check) {
		this.email = email;
		this.password = password;
		this.tel = tel;
		this.name = name;
		this.admin_check = admin_check;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAdmin_check() {
		return admin_check;
	}
	public void setAdmin_check(String admin_check) {
		this.admin_check = admin_check;
	}

	@Override
	public String toString() {
		return "MEMBER [email=" + email + ", password=" + password + ", tel=" + tel + ", name=" + name
				+ ", admin_check=" + admin_check + "]";
	}
}//end class
>>>>>>> ba1145eb396a46bd219bb01d81c844e7719cc9c6
