package com.house.dragonfly.user;

import java.util.Map;

import com.house.dragonfly.domain.MEMBER;

public interface LoginDAO {
	//로그인
	Map<String, Object> login(Map<String, Object> map);
	
	//사업자 로그인
	Map<String, Object> businessLogin(Map<String, Object> map);	
}
