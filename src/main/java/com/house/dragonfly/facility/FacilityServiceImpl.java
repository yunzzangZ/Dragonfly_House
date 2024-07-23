package com.house.dragonfly.facility;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.FacilityVO;

@Service
public class FacilityServiceImpl implements FacilityService {

	@Autowired
	private FacilityDAO dao;
	@Override
	public List<FacilityVO> listAll() {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public FacilityVO selectOne(int fac_id) {
		// TODO Auto-generated method stub
		return dao.selectOne(fac_id);
	}

	@Override
	public int insert(FacilityVO fac) {
		// TODO Auto-generated method stub
		return dao.insert(fac);
	}

	@Override
	public int update(FacilityVO fac) {
		// TODO Auto-generated method stub
		return dao.update(fac);
	}

	@Override
	public int delete(int fac_id) {
		// TODO Auto-generated method stub
		return dao.delete(fac_id);
	}

}
