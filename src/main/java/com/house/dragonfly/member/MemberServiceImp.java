package com.house.dragonfly.member;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.house.dragonfly.domain.MEMBER;

@Service
public class MemberServiceImp implements MemberService{
	@Inject
	private MemberDAO memdao;

	@Override
	public List<MEMBER> myInfoAll() {
		return memdao.myInfoAll();
	}

	@Override
	public MEMBER myInfo(String email) {
		return memdao.myInfo(email);
	}

	@Override
	public void myInfoUpdate(MEMBER mem) {
		memdao.myInfoUpdate(mem);
	}

	@Override
	public void updatePw(MEMBER mem) {
		memdao.updatePw(mem);
	}

	@Override
	public void memberDelete(String email) {
		memdao.memberDelete(email);
	}


	
	

}//end
