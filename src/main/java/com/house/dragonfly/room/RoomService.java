package com.house.dragonfly.room;

import java.util.List;

import com.house.dragonfly.domain.RoomVO;

public interface RoomService {

	   //전체회원(방)조회
	   public List<RoomVO> ro_listAll();
	   
	   //방번호로
	   public RoomVO ro_selectOne(int ro_num);
	   
	   // 방 추가
	   public boolean ro_insert(RoomVO ro_insert);
	   
	   //가수정
	   public boolean ro_update(RoomVO ro_update);
	   
	   // 삭제_방번호 기준
	   public boolean ro_delete(int ro_num);
	   //======================
	}


	

	





	
	
	
	
	

