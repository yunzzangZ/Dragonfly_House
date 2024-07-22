package com.house.dragonfly.cs;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.CS;

@Service
public class CSServiceImp implements CSService {
	@Inject
	private CSDAO csdao;
	
	@Override
	public List<CS> mycsAll() {
		return csdao.mycsAll();
	}

	@Override
	public List<CS> mycsSelect(String email) {
		return csdao.mycsSelect(email);
	}

	@Override
	public CS mycsDetails(int cs_id) {
		return csdao.mycsDetails(cs_id);
	}

	@Override
	public void mycsInsert(CS cs) {
		csdao.mycsInsert(cs);
	}

	@Override
	public void mycsUpdate(CS cs) {
		csdao.mycsUpdate(cs);
	}

	@Override
	public void mycsDelete(int cs_id) {
		csdao.mycsDelete(cs_id);
	}

}//end
