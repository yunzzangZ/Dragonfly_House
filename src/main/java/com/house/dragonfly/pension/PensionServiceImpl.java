package com.house.dragonfly.pension;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.FacilityVO;
import com.house.dragonfly.domain.PensionVO;

@Service
public class PensionServiceImpl implements PensionService{
	@Autowired
	private PensionDAO dao;

	@Override
	public List<PensionVO> pen_listAll() {
		// TODO Auto-generated method stub
		return dao.pen_listAll();
	}

	@Override
	public PensionVO pen_selectOne(String pen_addr) {
		// TODO Auto-generated method stub
		return dao.pen_selectOne(pen_addr);
	}

	@Override
	public boolean pen_insert(PensionVO pen_insert) {
		// TODO Auto-generated method stub
		return dao.pen_insert(pen_insert);
	}

	@Override
	public boolean pen_update(PensionVO pen_update) {
		// TODO Auto-generated method stub
		return dao.pen_update(pen_update);
	}

	@Override
	public boolean pen_delete(String pen_addr) {
		// TODO Auto-generated method stub
		return dao.pen_delete(pen_addr);
	}


	//======================
}
