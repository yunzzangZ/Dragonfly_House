package com.house.dragonfly.find;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.MEMBER;

@Service
public class FindServiceImpl implements FindService{
	@Inject
	public FindDAO dao;
	
	@Override
	public MEMBER findId(MEMBER member) {
		return dao.findId(member);
	}

	@Override
	public MEMBER findPassword(MEMBER member) {
		return dao.findPassword(member);
	}
}
