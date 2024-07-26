package com.house.dragonfly.facility;

import java.util.List;


import com.house.dragonfly.domain.FacilityVO;

public interface FacilityService {

	   //전체회원(사업자)조회
	   public List<FacilityVO> fac_listAll();
	   
	   //회원조회(사업자 - 기준: 이메일)
	   public FacilityVO fac_selectOne(int fac_id);
	   
	   // 사업자 가입자 추가
	   public boolean fac_insert(FacilityVO fac_insert);
	   
	   //가입자(사업자)수정
	   public boolean fac_update(FacilityVO fac_update);
	   
	   // 삭제_이메일 기준
	   public boolean fac_delete(int fac_id );
	 
	   //======================
	}


	

	





	
	
	
	
	

