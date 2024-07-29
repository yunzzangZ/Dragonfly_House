package com.house.dragonfly.user;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.house.dragonfly.domain.MEMBER;

@Repository
public class LoginDAOImpl implements LoginDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String nameSpaces = "com.house.dragonfly.LoginMapper";

	@Override
	public Map<String, Object> login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpaces + ".login", map);
	}
	
	@Override
	public Map<String, Object> businessLogin(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpaces + ".businessLogin", map);
	}	
	
	@Override
	public Map<String, Object> adminLogin(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpaces + ".adminLogin", map);
	}	
}
