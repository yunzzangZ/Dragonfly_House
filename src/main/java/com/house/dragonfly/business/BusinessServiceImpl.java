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
	public List<BusinessVO> listAll() {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public BusinessVO selectOne(String bu_email) {
		// TODO Auto-generated method stub
		return dao.selectOne(bu_email);
	}

	@Override
	public boolean insert(BusinessVO bu_insert) {
		// TODO Auto-generated method stub
		return dao.insert(bu_insert);
	}

	@Override
	public boolean update(BusinessVO bu_update) {
		// TODO Auto-generated method stub
		return dao.update(bu_update);
	}

	@Override
	public boolean delete(String bu_email) {
		// TODO Auto-generated method stub
		return dao.delete(bu_email);
	}



	//======================
}
