package com.house.dragonfly.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.house.dragonfly.domain.MEMBER;

@Repository
public class MemberDAOImp implements MemberDAO{
	@Inject
	private SqlSession SqlSession;
	
	private final static String nameSpace = "kr.co.dong.MemberMapper";

	@Override
	public List<MEMBER> myInfoAll() {
		return SqlSession.selectList(nameSpace + ".myInfoAll");
	}

	@Override
	public MEMBER myInfo(String email) {
		return SqlSession.selectOne(nameSpace + ".myInfo",email);
	}

	@Override
	public void myInfoUpdate(MEMBER mem) {
		SqlSession.selectOne(nameSpace + ".myInfoUpdate", mem);

	}

	@Override
	public void updatePw(MEMBER mem) {
		SqlSession.selectOne(nameSpace + ".updatePw", mem);
	}

	@Override
	public void memberDelete(String email) {
		SqlSession.selectOne(nameSpace + ".memberDelete", email);
	}
	
	

}//end
