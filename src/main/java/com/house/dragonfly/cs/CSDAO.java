package com.house.dragonfly.cs;

import java.util.List;

import com.house.dragonfly.domain.CS;

public interface CSDAO {

//	문의사항 전체
	public List<CS> mycsAll();
	
//	문의사항 회원별
	public List<CS> mycsSelect(String email);
	
//	문의사항 상세보기
	public CS mycsDetails(int cs_id);
	
//	문의사항 추가
	public void mycsInsert(CS cs);
	
//	문의사항 수정
	public void mycsUpdate(CS cs);
	
//	문의사항 삭제
	public void mycsDelete(int cs_id);
	
}//end
