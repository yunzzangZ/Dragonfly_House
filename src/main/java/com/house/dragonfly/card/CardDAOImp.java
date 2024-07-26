package com.house.dragonfly.card;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.house.dragonfly.domain.CARD;

@Repository
public class CardDAOImp implements CardDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private final static String nameSpace = "com.house.dragonfly.CardMapper";
	

	@Override
	public List<CARD> cardSelect(String email) {
		return sqlSession.selectList(nameSpace+".cardSelect", email);
	}

	@Override
	public CARD cardDetails(long card_number) {
		return sqlSession.selectOne(nameSpace+".cardDetails", card_number);
	}
	
	@Override
	public void cardInsert(CARD card) {
		sqlSession.selectList(nameSpace+".cardInsert", card);
		
	}

	@Override
	public void cardDelete(long card_number) {
		sqlSession.selectList(nameSpace+".cardDelete", card_number);
		
	}

	

}//end
