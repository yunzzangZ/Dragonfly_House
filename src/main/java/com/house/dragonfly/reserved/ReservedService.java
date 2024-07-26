package com.house.dragonfly.reserved;

import java.util.List;

import com.house.dragonfly.domain.BusinessVO;
import com.house.dragonfly.domain.FacilityVO;
import com.house.dragonfly.domain.ReservedVO;

public interface ReservedService {

	   //전체 예약 조회
	   public List<ReservedVO> res_listAll();
	   
	   //예약조회
	   public ReservedVO res_selectOne(int booking_bo_num);
	   
	   // 예약 추가
	   public boolean res_insert(ReservedVO rse_insert);;
	   
	   //예약수정
	   public boolean res_update(ReservedVO res_update);
	   
	   // 예약 기준
	   public boolean res_delete(int booking_bo_num);
	   
	//=================   
	}


	

	





	
	
	
	
	

