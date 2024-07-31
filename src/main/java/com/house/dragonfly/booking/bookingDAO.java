package com.house.dragonfly.booking;

import java.util.List;

import com.house.dragonfly.domain.BOOKING;

public interface bookingDAO {

//	예약 전체
	public List<BOOKING> bookingListAll();
	
//	예약 전체_회원별
	public List<BOOKING> bookingListSelect(String email);
	
//	예약 상세보기
	public BOOKING bookingListDetails(int bo_num);
	
//	예약 취소만보기_회원별
	public List<BOOKING> bookingCancleSelect(String email);
	
//	예약 추가
	public void bookingInsert(BOOKING bo);
	
//	예약추가 후 바로 결제화면 추가
//	public void payInsert(BOOKING bo);
	
//	예약취소요청
	public void bookingCancleUpdate(int bo_num);
	
}//end
