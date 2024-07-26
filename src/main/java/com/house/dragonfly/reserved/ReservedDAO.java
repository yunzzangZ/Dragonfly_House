package com.house.dragonfly.reserved;

import java.util.List;


import com.house.dragonfly.domain.ReservedVO;


public interface ReservedDAO {
	   
	   //전체회원(사업자)조회
	   public List<ReservedVO> res_listAll();
	   
	   //회원조회(사업자 - 기준: 이메일)
	   public ReservedVO res_selectOne(int booking_bo_num);
	   
	   // 사업자 가입자 추가
	   public boolean res_insert(ReservedVO rse_insert);;
	   
	   //가입자(사업자)수정
	   public boolean res_update(ReservedVO res_update);
	   
	   // 삭제_이메일 기준
	   public boolean res_delete(int booking_bo_num);
	   
	//=================   
	}
