/*
 * Service -> 비지니스모델 기능처리를 함 (->DAO호출도 함)
 * @Service
 */
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
	public String insert(BusinessVO bu) {
		// TODO Auto-generated method stub
		return dao.insert(bu);
	}

	@Override
	public String update(BusinessVO bu) {
		// TODO Auto-generated method stub
		return dao.update(bu);
	}

	@Override
	public String delete(String bu_email) {
		// TODO Auto-generated method stub
		return dao.delete(bu_email);
	}
	


	//======================
}
