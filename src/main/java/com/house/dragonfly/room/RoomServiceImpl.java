package com.house.dragonfly.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.RoomVO;

@Service
public class RoomServiceImpl implements RoomService{
	@Autowired
	private RoomDAO dao;

	@Override
	public List<RoomVO> ro_listAll() {
		// TODO Auto-generated method stub
		return dao.ro_listAll();
	}

	@Override
	public RoomVO ro_selectOne(int ro_num) {
		// TODO Auto-generated method stub
		return dao.ro_selectOne(ro_num);
	}

	@Override
	public boolean ro_insert(RoomVO ro_insert) {
		// TODO Auto-generated method stub
		return dao.ro_insert(ro_insert);
	}

	@Override
	public boolean ro_update(RoomVO ro_update) {
		// TODO Auto-generated method stub
		return dao.ro_update(ro_update);
	}

	@Override
	public boolean ro_delete(int ro_num) {
		// TODO Auto-generated method stub
		return dao.ro_delete(ro_num);
	}

	//======================
}
