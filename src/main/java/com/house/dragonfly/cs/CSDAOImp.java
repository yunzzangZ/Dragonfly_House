package com.house.dragonfly.cs;

import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.house.dragonfly.domain.CS;


@Repository
public class CSDAOImp implements CSDAO {
	
	@Inject
	private SqlSession SqlSession;
	
	private final static String nameSpace="kr.co.dong.CSMapper";
	
	@Override
	public List<CS> mycsAll() {
		return SqlSession.selectList(nameSpace+".mycsAll");
	}

	@Override
	public List<CS> mycsSelect(String email) {
		return SqlSession.selectList(nameSpace+".mycsSelect", email);
	}

	@Override
	public CS mycsDetails(int cs_id) {
		return SqlSession.selectOne(nameSpace+".mycsDetails", cs_id);
	}

	@Override
	public void mycsInsert(CS cs) {
		SqlSession.selectOne(nameSpace+".mycsInsert",cs);
	}

	@Override
	public void mycsUpdate(CS cs) {
		SqlSession.selectOne(nameSpace+".mycsUpdate",cs);
	}

	@Override
	public void mycsDelete(int cs_id) {
		SqlSession.selectOne(nameSpace+".mycsDelete", cs_id);
	}

}//end
