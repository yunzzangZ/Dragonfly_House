package com.house.dragonfly.reserved;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.FacilityVO;
import com.house.dragonfly.domain.ReservedVO;

@Service
public class ReservedServiceImpl implements ReservedService{
	@Autowired
	private ReservedDAO dao;

	@Override
	public List<ReservedVO> res_listAll() {
		// TODO Auto-generated method stub
		return dao.res_listAll();
	}

	@Override
	public ReservedVO res_selectOne(int booking_bo_num) {
		// TODO Auto-generated method stub
		return dao.res_selectOne(booking_bo_num);
	}

	@Override
	public boolean res_insert(ReservedVO rse_insert) {
		// TODO Auto-generated method stub
		return dao.res_insert(rse_insert);
	}

	@Override
	public boolean res_update(ReservedVO res_update) {
		// TODO Auto-generated method stub
		return dao.res_update(res_update);
	}

	@Override
	public boolean res_delete(int booking_bo_num) {
		// TODO Auto-generated method stub
		return dao.res_delete(booking_bo_num);
	}



	//======================
}
