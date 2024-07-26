package com.house.dragonfly.card;

import java.util.List;

import com.house.dragonfly.domain.CARD;

public interface CardDAO {
	
//	카드 회원별 보기
	public List<CARD> cardSelect(String email);
	
//	카드 상세보기
	public CARD cardDetails(long card_number);
	
//	카드 추가
	public void cardInsert(CARD card);
	
//	카드 삭제
	public void cardDelete(long card_number);
	
}//end
