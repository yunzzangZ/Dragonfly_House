package com.house.dragonfly.room_facility;

import java.util.List;

import com.house.dragonfly.domain.RoomFacilityVO;

public interface RoFacDAO {
	   
	   //전체조회
	   public List<RoomFacilityVO> rofac_listAll();
	   
	   //선택조회
	   public RoomFacilityVO rofac_selectOne(int room_ro_num);
	   
	   // 빙번호 시설번호 추가
	   public boolean rofac_insert(RoomFacilityVO rofac_insert);;
	   
	   //방시설 수정
	   public boolean rofac_update(RoomFacilityVO rofac_update);
	   
	   // 삭제_방번호 기준
	   public boolean rofac_delete(int room_ro_num);
	   
	//=================   
	}
