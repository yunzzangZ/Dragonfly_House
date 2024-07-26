package com.house.dragonfly.user;

import java.util.Map;

import com.house.dragonfly.domain.MEMBER;

public interface LoginService {
	Map<String, Object> login(Map<String, Object> map);	
	
	Map<String, Object> businessLogin(Map<String, Object> map);		
}
