package com.house.dragonfly.payment;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.house.dragonfly.domain.PAYMENT;

@Repository
public class PaymentDAOImp implements PaymentDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private final static String nameSpace ="com.house.dragonfly.PaymentMapper";
	
	@Override
	public PAYMENT payDetails_bo_num(int bo_num) {
		return sqlSession.selectOne(nameSpace+".payDetails_bo_num", bo_num);
	}

	@Override
	public PAYMENT payDetails_pay_id(int pay_id) {
		return sqlSession.selectOne(nameSpace+".payDetails_pay_id", pay_id);
	}
	
	@Override
	public void payInsertUpdate(PAYMENT pay) {
		sqlSession.selectOne(nameSpace+".payInsertUpdate", pay);
	}
	
//	@Override
//	public void payInsertCard(PAYMENT pay) {
//		sqlSession.selectOne(nameSpace+".payInsertCard", pay);
//	}
//
//	@Override
//	public void payInsertCash(PAYMENT pay) {
//		sqlSession.selectOne(nameSpace+".payInsertCash", pay);
//	}

	@Override
	public void payInsertDone(PAYMENT pay) {
		sqlSession.selectOne(nameSpace+".payInsertDone", pay);
	}
	
	
	@Override
	public void payUpdateCard(PAYMENT pay) {
		sqlSession.selectOne(nameSpace+".payUpdateCard",pay);
	}

	@Override
	public void payUpdateCash(PAYMENT pay) {
		sqlSession.selectOne(nameSpace+".payUpdateCash",pay);
	}









}//end
