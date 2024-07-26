package com.house.dragonfly.domain;

public class MEMBER {
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