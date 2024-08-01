package com.house.dragonfly.member;

import java.util.List;

import com.house.dragonfly.domain.MEMBER;

public interface MemberService {

//	회원정보_전부
	public List<MEMBER> myInfoAll();
	
//	회원정보보기_회원별
	public MEMBER myInfo(String email);
	
//	회원정보수정
	public void myInfoUpdate(MEMBER mem);
	
//	회원 비밀번호 수정
	public void updatePw(MEMBER mem);
	
//	회원탈퇴
	public void memberDelete(String email);	
	
}//end
