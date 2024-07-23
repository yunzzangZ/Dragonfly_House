package com.house.dragonfly.facility;

import java.util.List;

import com.house.dragonfly.domain.FacilityVO;

public interface FacilityService {

	// 전체 숙박 시설(침대여부 등등)
	public List<FacilityVO> listAll();
	
	// 번호로 조회
	public FacilityVO selectOne(int fac_id);
	
	// 추가
	public int insert(FacilityVO fac);
	
	public int update(FacilityVO fac);
	
	public int delete(int fac_id);	
	
	//-------------------
}

