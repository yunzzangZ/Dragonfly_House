package com.house.dragonfly.room_facility;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.RoomFacilityVO;

@Service
public class RoFacServiceImpl implements RoFacService{
	@Autowired
	private RoFacDAO dao;

	@Override
	public List<RoomFacilityVO> rofac_listAll() {
		// TODO Auto-generated method stub
		return dao.rofac_listAll();
	}

	@Override
	public RoomFacilityVO rofac_selectOne(int room_ro_num) {
		// TODO Auto-generated method stub
		return dao.rofac_selectOne(room_ro_num);
	}

	@Override
	public boolean rofac_insert(RoomFacilityVO rofac_insert) {
		// TODO Auto-generated method stub
		return dao.rofac_insert(rofac_insert);
	}

	@Override
	public boolean rofac_update(RoomFacilityVO rofac_update) {
		// TODO Auto-generated method stub
		return dao.rofac_update(rofac_update);
	}

	@Override
	public boolean rofac_delete(int room_ro_num) {
		// TODO Auto-generated method stub
		return dao.rofac_delete(room_ro_num);
	}

	//======================
}
