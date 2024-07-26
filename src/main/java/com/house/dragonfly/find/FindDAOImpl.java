package com.house.dragonfly.find;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.house.dragonfly.domain.MEMBER;

@Repository
public class FindDAOImpl implements FindDAO{
	@Autowired
	private SqlSession mybatis;
	
	String nameSpace = "com.house.dragonfly.FindMapper.";
	
	public MEMBER findId(MEMBER member) {
		System.out.println("findId() 기능 처리");
		return mybatis.selectOne(nameSpace + "findId", member);
	}

	public MEMBER findPassword(MEMBER member) {
		System.out.println("findPassword() 기능 처리");
		return mybatis.selectOne(nameSpace + "findPassword", member);
	}
}
