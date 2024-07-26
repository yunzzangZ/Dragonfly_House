package com.house.dragonfly.user;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.MEMBER;

@Service
public class LoginServiceImpl implements LoginService{
	@Inject
	public LoginDAO dao;
	
	@Override
	public Map<String, Object> login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.login(map);
	}
	
	@Override
	public Map<String, Object> businessLogin(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.businessLogin(map);
	}	
}
