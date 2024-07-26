package com.house.dragonfly.user;

import java.util.Map;

import com.house.dragonfly.domain.MEMBER;

public interface LoginService {
	Map<String, Object> login(Map<String, Object> map);	
}