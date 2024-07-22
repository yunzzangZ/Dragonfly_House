package com.house.dragonfly.member;

import java.util.List;

import com.house.dragonfly.domain.MEMBER;

public interface MemberDAO {

//	회원정보_전부
	public List<MEMBER> myInfoAll();
	
//	회원정보 상세보기
	public MEMBER myInfo(String email);
	
//	회원정보수정
	public void myInfoUpdate(MEMBER mem);
	
//	회원 비밀번호 수정
	public void updatePw(MEMBER mem);
	
//	회원탈퇴
	public void memberDelete(String email);
	
}//end
