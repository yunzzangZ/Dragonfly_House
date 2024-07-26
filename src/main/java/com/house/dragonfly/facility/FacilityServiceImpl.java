package com.house.dragonfly.facility;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.FacilityVO;

@Service
public class FacilityServiceImpl implements FacilityService{
	@Autowired
	private FacilityDAO dao;

	@Override
	public List<FacilityVO> fac_listAll() {
		// TODO Auto-generated method stub
		return dao.fac_listAll();
	}

	@Override
	public FacilityVO fac_selectOne(int fac_id) {
		// TODO Auto-generated method stub
		return dao.fac_selectOne(fac_id);
	}

	@Override
	public boolean fac_insert(FacilityVO fac_insert) {
		// TODO Auto-generated method stub
		return dao.fac_insert(fac_insert);
	}

	@Override
	public boolean fac_update(FacilityVO fac_update) {
		// TODO Auto-generated method stub
		return dao.fac_update(fac_update);
	}

	@Override
	public boolean fac_delete(int fac_id) {
		// TODO Auto-generated method stub
		return dao.fac_delete(fac_id);
	}

	//======================
}
