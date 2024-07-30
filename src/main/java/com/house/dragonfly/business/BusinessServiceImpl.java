package com.house.dragonfly.business;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.BusinessVO;

@Service
public class BusinessServiceImpl implements BusinessService{
	@Autowired
	private BusinessDAO dao;

	@Override
	public List<BusinessVO> bu_listAll() {
		// TODO Auto-generated method stub
		return dao.bu_listAll();
	}

	@Override
	public BusinessVO bu_selectOne(String bu_email) {
		// TODO Auto-generated method stub
		return dao.bu_selectOne(bu_email);
	}

	@Override
	public boolean bu_insert(BusinessVO bu_insert) {
		// TODO Auto-generated method stub
		return dao.bu_insert(bu_insert);
	}

	@Override
	public boolean bu_update(BusinessVO bu_update) {
		// TODO Auto-generated method stub
		return dao.bu_update(bu_update);
	}

	@Override
	public boolean bu_delete(String bu_email) {
	
	    return dao.bu_delete(bu_email);
	}
	


	//======================
}
