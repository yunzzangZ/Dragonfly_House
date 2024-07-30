package com.house.dragonfly.business;

import java.util.List;

import com.house.dragonfly.domain.BusinessVO;

public interface BusinessService {

	   //전체회원(사업자)조회
	   public List<BusinessVO> bu_listAll();
	   
	   //회원조회(사업자 - 기준: 이메일)
	   public BusinessVO bu_selectOne(String bu_email);
	   
	   // 사업자 가입자 추가
	   public boolean bu_insert(BusinessVO bu_insert);;
	   
	   //가입자(사업자)수정
	   public boolean bu_update(BusinessVO bu_update);
	   
	   // 삭제_이메일 기준
	   public boolean bu_delete(String bu_eamil);
	  
	 
	   //======================
	}


	

	





	
	
	
	
	

